/*
 * File:  IV12Code
 * --------------
 * Erick Blankenberg
 * ME203
 * 5/5/2019
 * Nixie Clock Project
 *
 * Description:
 *   Firmware for a desktop clock and timer that can play music.
 * 
 * Notes:
 *  - Buttons:
 *      > Left:   T9, <10 low, > 80 high
 *      > Middle: T8, <10 low, > 80 high
 *      > Right:  T5, <10 low, > 80 high
 *  - Interface:
 *      Use left and right arrows to change current mode, use middle button to pause play etc.
 * 
 * TODO
 *  - I was able to connect to my phone with a breakout board 
 *    but was not able to with the embedded one. This may be 
 *    a substantial problem. I also need to update the date and time from this.
 */

// Debugging
#define DEBUG_TOUCH // If uncommented enables prints on button contact and release

// State Machine
#include "Fsm.h"
#define FSM_TOUCH_LEFT_SHORT   1
#define FSM_TOUCH_MIDDLE_SHORT 2
#define FSM_TOUCH_RIGHT_SHORT  3
#define FSM_TOUCH_LEFT_LONG    4
#define FSM_TOUCH_MIDDLE_LONG  5
#define FSM_TOUCH_RIGHT_LONG   6
Fsm fsm;
// > Count up timer
State state_counter_countup(state_counter_countup_enter, &state_counter_countup, NULL);
State state_counter_paused();
State state_counter_countdown();
// > Count down time
// > Date
// > Time

// Real Time Clock
#include <TimeLib.h>
#include <Wire.h>
#include "RtcDS3231.h"
RtcDS3231<TwoWire> Rtc(Wire);

// Internet Time
#include <WiFi.h>
#include <NTPClient.h>
#include <WiFiUdp.h>
const char* ssid     = "EricksPhone";
const char* password = "password";
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP);

// StopWatch
#include "Chrono.h"
Chrono stopWatch;
Chrono testWatch; // Used for keeping track of timing for test function updates, dont use multiple tests at the same time

//---------------------- Pin Definitions -----------------------

#define PIN_LED       13
#define PIN_NIXIE_DO  14
#define PIN_NIXIE_CLK 17 // 21 default
#define PIN_NIXIE_LE  15
#define PIN_NIXIE_BL  4

typedef struct {
  int  writeVal[6]; // Write integers, use numbers greater than 10 for blank
  bool writeDecimals[4]; // Top left, bottom left, top right, bottom right
} nixieWriteStruct;

#define PIN_TOUCH_LEFT   T9
#define PIN_TOUCH_MIDDLE T8
#define PIN_TOUCH_RIGHT  T5
#define TOUCH_THRESHOLD  40
#define TOUCH_TIMEOUT    100 // How long since last touch until considered timed out in millis

typedef struct {
  bool     touched        = false;
  uint16_t lastUpdateTime = 0;
  uint16_t startTime      = 0;
} buttonState;

buttonState leftTouched, middleTouched, rightTouched;

//----------------------- The Program --------------------------

void setup() {
  setTime(3,30,0,7,6,2019);
  // Utility
  Serial.begin(115200);
  Serial.println("Starting");
  pinMode(PIN_LED, OUTPUT);
  digitalWrite(13, HIGH);
  initializeTouch();
  initializeNixieInterface();
  //initializeFSM();
  //initializeWifi();
  //initializeInternetTime();
//  initializeRTC();
}

void loop() {
  refreshButtons();
  testNixiesCountUp();
  //testNixiesSimpleTime();
  //testNixieTimer();
  //writeInternetTime();
//  writeRTCTime();
  

}

//---------------------- General Functions ---------------------

// Writes one digit to the display, remember that this shifts everything
void writeVal(nixieWriteStruct inputVal) {
  digitalWrite(PIN_NIXIE_LE, LOW);
  for(int currentBulb  = 0; currentBulb < 6; currentBulb++) {
    for(int currentBit = 15; currentBit >= 0; currentBit--) {
      bool doHigh = false;
      if(currentBit < 10) {
        doHigh = (currentBit == inputVal.writeVal[currentBulb]);
      } else if(currentBit < 14){
        doHigh = (inputVal.writeDecimals[currentBit - 10]);
      }
      digitalWrite(PIN_NIXIE_DO, doHigh);
      digitalWrite(PIN_NIXIE_CLK, LOW);
      digitalWrite(PIN_NIXIE_CLK, HIGH);
      digitalWrite(PIN_NIXIE_LE, HIGH);
      delayMicroseconds(5);
    } 
  }
  digitalWrite(PIN_NIXIE_LE, LOW);
}

void initializeNixieInterface() {
  Serial.println("Initializing Nixie Interface");
  // Sets pins
  pinMode(PIN_NIXIE_DO,  OUTPUT);
  pinMode(PIN_NIXIE_CLK, OUTPUT);
  pinMode(PIN_NIXIE_LE,  OUTPUT);
  pinMode(PIN_NIXIE_BL,  OUTPUT);
  digitalWrite(PIN_NIXIE_DO,  HIGH);
  digitalWrite(PIN_NIXIE_CLK, HIGH);
  digitalWrite(PIN_NIXIE_LE,  HIGH);
  digitalWrite(PIN_NIXIE_BL,  HIGH);
  // Clear data 
  nixieWriteStruct inputVal;
  inputVal.writeVal[0] = 0;
  inputVal.writeVal[1] = 0;
  inputVal.writeVal[2] = 0;
  inputVal.writeVal[3] = 0;
  inputVal.writeVal[4] = 0;
  inputVal.writeVal[5] = 0;
  inputVal.writeDecimals[0] = true;
  inputVal.writeDecimals[1] = true;
  inputVal.writeDecimals[2] = true;
  inputVal.writeDecimals[3] = true;
  writeVal(inputVal);
}

// Starts WIFI connection
void initializeWifi() {
  Serial.println("Initializing Wifi");
  Serial.print("Connecting to:");
  Serial.print(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(" ");
  Serial.println("WiFi connected");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
}

/*
void testNixiesSimpleTime() {
  time_t t = now(); // store the current time in time variable t
  int currentSecond = second(t);
  int currentMinute = minute(t);
  int currentHour   = hour(t);
  writeVal((currentSecond % 10), true);
  writeVal((currentSecond / 10), true);
  writeVal((currentMinute % 10), true);
  writeVal((currentMinute / 10), true);
  writeVal((currentHour % 10), true);
  writeVal((currentHour / 10), true);
  
  Serial.print(currentSecond % 10);
  Serial.print(currentSecond / 10);
  Serial.print(" ");
  Serial.print(currentMinute % 10);
  Serial.print(currentMinute / 10);
  Serial.print(" ");
  Serial.print(currentHour % 10);
  Serial.println(currentHour / 10);
  delay(100);
}

// Shifts each value through all displays
void testNixiesShiftUp() {
  // Puts initial values through
  for(int currentValue = 0; currentValue < 10; currentValue++) {
    writeVal(currentValue, true);
    delay(250);
  }
  // Shifts remainder of tail through followed by zeros
  for(int tailValue = 0; tailValue < 6; tailValue++) {
    writeVal(0, true);
    delay(250);
  }
}
*/

// Literarily just goes through all displayable values
void testNixiesCountUp() {
  static int oldVal = 0;
  int currentVal = millis() / 10;
  if(oldVal != currentVal) {
    oldVal = currentVal;
    nixieWriteStruct inputVal;
    inputVal.writeVal[0] = currentVal % 10;
    inputVal.writeVal[1] = (currentVal >= 10) ? ((currentVal / 10) % 10) : 99;

    inputVal.writeVal[2] = (currentVal >= 100) ? ((currentVal / 100) % 10): 99;
    inputVal.writeVal[3] = (currentVal >= 1000) ? ((currentVal / 1000) % 10) : 99;
    inputVal.writeVal[4] = (currentVal >= 10000) ? ((currentVal / 10000) % 10) : 99;
    inputVal.writeVal[5] = (currentVal >= 100000) ? ((currentVal / 100000) % 10) : 99;
    inputVal.writeDecimals[0] = false;
    inputVal.writeDecimals[1] = false;
    inputVal.writeDecimals[2] = false;
    inputVal.writeDecimals[3] = true;
    writeVal(inputVal);
  }
}

//----------------------- Touch Interface ---------------------

void touchLeft() {

  if((millis() - leftTouched.lastUpdateTime) > TOUCH_TIMEOUT) {
     leftTouched.startTime = millis();
     #ifdef DEBUG_TOUCH
     Serial.println("Touched Left"); 
     #endif
  }
  leftTouched.touched = true;
  leftTouched.lastUpdateTime = millis();
}

void touchMiddle() {
  if((millis() - middleTouched.lastUpdateTime) > TOUCH_TIMEOUT) {
    middleTouched.startTime = millis();  
    #ifdef DEBUG_TOUCH
    Serial.println("Touched Middle:");
    #endif 
  }
  middleTouched.touched = true;
  middleTouched.lastUpdateTime = millis();
}

void touchRight() {
  if((millis() - rightTouched.lastUpdateTime) > TOUCH_TIMEOUT) {
    rightTouched.startTime = millis();
    #ifdef DEBUG_TOUCH
    Serial.println("Touched Right");
    #endif 
  }
  rightTouched.touched = true;
  rightTouched.lastUpdateTime = millis();
}

void initializeTouch() {
  touchAttachInterrupt(PIN_TOUCH_LEFT,   touchLeft,   TOUCH_THRESHOLD);
  touchAttachInterrupt(PIN_TOUCH_MIDDLE, touchMiddle, TOUCH_THRESHOLD);
  touchAttachInterrupt(PIN_TOUCH_RIGHT,  touchRight,  TOUCH_THRESHOLD);
}

// Sets the buttons low if they have not been touched in awhile
void refreshButtons() {
  int currentTime = millis();
  if(leftTouched.touched && ((currentTime - leftTouched.lastUpdateTime) > TOUCH_TIMEOUT)) {
    leftTouched.touched = false;
    #ifdef DEBUG_TOUCH
    Serial.println("Un-touched Left");
    #endif
  }

  if(middleTouched.touched && ((currentTime - middleTouched.lastUpdateTime) > TOUCH_TIMEOUT)) {
    middleTouched.touched = false;
    #ifdef DEBUG_TOUCH
    Serial.println("Un-touched Middle");
    #endif
  }

  if(rightTouched.touched && ((currentTime - rightTouched.lastUpdateTime) > TOUCH_TIMEOUT)) {
    rightTouched.touched = false;
    #ifdef DEBUG_TOUCH
    Serial.println("Un-touched Right");
    #endif
  }
}

//------------------------ FSM Functions ----------------------

//-------------------=---- TIme RTC IO ------------------------

/*
void initializeRTC() {
 // Rtc.begin();
  if(!Rtc.IsDateTimeValid())) {
    Serial.println("RTC has bad time, resetting.");
    while(1);
  } else if(!Rtc.GetIsRunning()){
    Serial.println("RTC not active, restarting.");
    Rtc.SetIsRunning(true);
  }
  
  if (!rtc.lostPower()) {
    Serial.println("RTC power failure!");
    // following line sets the RTC to the date & time this sketch was compiled
    rtc.adjust(DateTime(__DATE__, __TIME__));
  }
}

#define countof(a) (sizeof(a) / sizeof(a[0]))
void printDateTime(const RtcDateTime& dt) {
    char datestring[20];
    snprintf_P(datestring, 
            countof(datestring),
            PSTR("%02u/%02u/%04u %02u:%02u:%02u"),
            dt.Month(),
            dt.Day(),
            dt.Year(),
            dt.Hour(),
            dt.Minute(),
            dt.Second() );
    Serial.println(datestring);
}

void writeRTCTime() {
  RtcDateTime currTime = Rtc.GetDateTime();
  printDateTime(currTime);
}
*/

//----------------------- Time Server IO -----------------------
/*
void initializeInternetTime() {
  timeClient.Begin();
  timeClient.setTimeOffset(-25200); // California is GMT -7
}

void writeInternetTime() { // TODO internet server should only be used to update RTC
  static bool lastOn = false;
  while(!timeClient.update()) {
    timeClient.forceUpdate();
  }
  String formattedDate = timeClient.getFormattedDate();
  Serial.println(formattedDate);
  // Format of date is 2018-05-28T16:00:13Z // TODO use ints for minute, hour, etc b/c RTC will do the same
  
  writeVal(((uint8_t) (formattedDate.charAt(9)) - 48), true); // ASCII is offset
  writeVal(((uint8_t) (formattedDate.charAt(8)) - 48), true);
  writeVal(((uint8_t) (formattedDate.charAt(7)) - 48), true);
  writeVal(((uint8_t) (formattedDate.charAt(6)) - 48), true);
  writeVal(((uint8_t) (formattedDate.charAt(5)) - 48), true);
  writeVal(((uint8_t) (formattedDate.charAt(4)) - 48), true);
  digitalWrite(PIN_LED, lastOn);
  lastOn = !lastOn;
  delay(10);
  
}
*/
//-------------------------- Timer IO --------------------------

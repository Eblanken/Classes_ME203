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
 */

// Real Time Clock
#include <Wire.h>
#include "RTClib.h"
RTC_DS3231 rtc;

// Internet Time
#include <WiFi.h>
#include <NTPClient.h>
#include <WiFiUdp.h>
const char* ssid     = "Erick'sPhone";
const char* password = "password";
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP);

//---------------------- Pin Definitions -----------------------

#define PIN_LED       13
#define PIN_NIXIE_DO  14
#define PIN_NIXIE_CLK 21
#define PIN_NIXIE_LE  15
#define PIN_NIXIE_BL  4


//----------------------- The Program --------------------------

void setup() {
  // Utility
  Serial.begin(9600);
  Serial.println("Starting");
  pinMode(PIN_LED, OUTPUT);
  digitalWrite(13, HIGH);
  initializeNixieInterface();
  
  /*

  // RTC Interface 
  if(!rtc.lostPower()) {
    Serial.println("RTC Failed");
    while(1);
  } else {
    Serial.println("RTC Active");
  }
  
  if (!rtc.lostPower()) {
    Serial.println("RTC power failure!");
    // following line sets the RTC to the date & time this sketch was compiled
    rtc.adjust(DateTime(__DATE__, __TIME__));
  }
  */
}

void loop() {
  testNixiesShiftUp();
  /*
  // Updates current time
  DateTime now = rtc.now();
  uint8_t currentHour = now.hour();
  uint8_t currentMinute = now.minute();
  uint8_t currentSecond = now.second();

  writeVal(currentSecond % 10);
  writeVal(currentSecond / 10);
  writeVal(currentMinute % 10);
  writeVal(currentMinute / 10);
  writeVal(currentHour % 10);
  writeVal(currentHour / 10);

  delay(500);
  */

}

//---------------------- General Functions ---------------------

// Writes one digit to the display, remember that this shifts everything
void writeVal(int inputValue, bool includeDecimals = false) {
  digitalWrite(PIN_NIXIE_LE, LOW);
  for(int currentCount = 15; currentCount >= 0; currentCount--) {
    bool doHigh = false;
    if(currentCount == inputValue) {
      doHigh = true;
    } else if(includeDecimals && (currentCount > 10)) {
      doHigh = true;
    }
    digitalWrite(PIN_NIXIE_DO, doHigh);
    digitalWrite(PIN_NIXIE_CLK, LOW);
    digitalWrite(PIN_NIXIE_CLK, HIGH);
    digitalWrite(PIN_NIXIE_LE, HIGH);
    delayMicroseconds(5);
  }
  digitalWrite(PIN_NIXIE_LE, LOW);
}

// Starts WIFI connection
void initializeWifi() {
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

void initializeNixieInterface() {
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
  for(int currentDigit = 0; currentDigit < 6; currentDigit++) {
    writeVal(0);
  }
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

// Literarily just goes through all displayable values
void testNixiesCountUp() {
  for(int hundredThousandths = 0; hundredThousandths < 10; hundredThousandths++) {
    for(int tenThousandths = 0; tenThousandths < 10; tenThousandths++) {
      for(int thousandths = 0; thousandths < 10; thousandths++) {
        for(int hundredsths = 0; hundredsths < 10; hundredsths++) {
          for(int tens = 0; tens < 10; tens++) {
            for(int ones = 0; ones < 10; ones++) {
              writeVal(ones, true);
              writeVal(tens, true);
              writeVal(hundredsths, true);
              writeVal(thousandths, true);
              writeVal(tenThousandths, true);
              writeVal(hundredThousandths, true);
            }
          }
        }
      }
    }
  }
}

//----------------------- Time Server IO -----------------------

void initializeInternetTime() {
  timeClient.begin();
  timeClient.setTimeOffset(-25200); // California is GMT -7
}

void writeInternetTime() { // TODO internet server should only be used to update RTC
  static bool lastOn = false;
  while(!timeClient.update()) {
    timeClient.forceUpdate();
  }
  String formattedDate = timeClient.getFormattedDate();
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

//-------------------------- Timer IO --------------------------


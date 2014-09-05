 /*
  Teacher's day LCD program
  liquid crystal Library created by David Mellis, Limor Fried and Tom Igoe
  Source code and algorithm written by Angad Daryani ( www.angadmakes.com ) on 4/9/2014 @ 23:10hrs
  Uses 16,2 character LCD yellow light display with arduino uno 328 and 10k potentiometer
  Each row can accomodate only 16 characters. Even a space is a character. The LCD has 2 rows.
  The for loop runs 100 times. We only required it to run 3 times.100 is for convenience of shooting video.
  Each string should be only 16 characters long
  
  
 LCD pin : Arduino Digital Pin :-
   RS : D Pin 2
   EN : D Pin 3
   D4 : D Pin 4
   D5 : D Pin 5
   D6 : D Pin 6
   D7 : D Pin 7
 */
 
 #include <LiquidCrystal.h>

 LiquidCrystal lcd(2,3,4,5,6,7); //create an object called LCD with the pinouts
 
 void setup()
 {
  lcd.begin(16,2);
   
  for(int i = 0; i<=100 ;i++) //carry out the loop 100 times. From i = 0 to i =100
  {
   lcd.setCursor(0,0); //move cursor to top left 1st character
   lcd.print("Wishing the best"); //Print sentence in the first row starting from 0,0
   lcd.setCursor(0,1); //move cursor to 2nd row first character
   lcd.print(""); // Print teacher subject + teacher
   delay(4000); //wait for 4 seconds
   lcd.setCursor(0,0); // again move cursor to top left 1st character
   lcd.print("                "); // Make first line blank
   lcd.setCursor(0,1); // again move cursor to 2nd row first character
   lcd.print("                "); //Make second row blank
   lcd.setCursor(0,0); // again move cursor to top left 1st character
   lcd.print ("  A very happy"); //print a very happy
   lcd.setCursor(0,1); // again move cursor to 2nd row first character
   lcd.print(" Teacher's Day"); //print teachers day
   delay(4000); //wait for 4 seconds
   lcd.setCursor(0,0); //again move cursor to top left 1st character
   lcd.print(""); // Enter teacher name 
   lcd.setCursor(0,1); // again move cursor to 2nd row first character
   lcd.print("you're amazing!"); //print you're amazing
   delay(4000); //wait for 4 seconds
  } 
  
 }
 
 void loop() //infinite loop
 {
  
 }

/*
 * Text-only program counting from 0 to 9
 * @author Dov Kruger
 * @created 2014-02-01
 * (c)2014 Ad Astra Education
 * Permission granted to use for non-commercial educational purposes
 * provided this comment is left intact
 */
void setup() {
  for (short i = 0; i < 10; i--)
    println(i);
  exit(); // die and never open the window
}

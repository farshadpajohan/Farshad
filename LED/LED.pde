Button button;
Button button2;
Button button3;
Button button4;
Button button5;
Button button6;
Button button7;
Button button8;
Button button9;
Button button10;
import processing.serial.*;

Serial myPort;
void setup() {
   println(Serial.list());
  myPort = new Serial(this, Serial.list()[4], 9600);
  myPort.buffer(1);

  size(650,210);
  colorMode(RGB,80.0);
 
  // A simple button class
 
 button2= new Button(5,5,160,20, "LED 1");
 button3= new Button(165,5,160,20, "LED 2");
 button4= new Button(325,5,160,20, "LED 3");
 button5= new Button(485,5,160,20, "LED 4");
 button6= new Button(5,25,160,20, "LED 5");
 button7= new Button(165,25,160,20, "LED 6");
 button8= new Button(325,25,160,20, "LED 7");
 button9= new Button(485,25,160,20, "LED 8");
 button = new Button(15,150,160,20, "LED ON");
 button10= new Button(175,150,160,20, "LED OFF");
 /*......................................*/
  

  
}
void draw() {
   float r = map(mouseX, 1, 1000, 0, 255);
  float b = map(mouseY, 0, 1000, 0, 100);
  float g = map((mouseY+mouseX), 0,1000, 1, 0);
  background(r, g, b);
 text("by Farshad Pajohan",15,194);
  text("------------------------",15,199);
 text("farshadpajohan@gmail.com",15,207);
textAlign(LEFT);
  fill(0);
  // Display the button
  button.display();
  button.rollover(mouseX,mouseY);
  button2.display();
  button2.rollover(mouseX,mouseY);
  button3.display();
  button3.rollover(mouseX,mouseY);
  button4.display();
  button4.rollover(mouseX,mouseY);
  button5.display();
  button5.rollover(mouseX,mouseY);
  button6.display();
  button6.rollover(mouseX,mouseY);
  button7.display();
  button7.rollover(mouseX,mouseY);
  button8.display();
  button8.rollover(mouseX,mouseY);
  button9.display();
  button9.rollover(mouseX,mouseY);
  button10.display();
  button10.rollover(mouseX,mouseY);
}
void mouseReleased() {
  button.released();
  button2.released();
  button3.released();
  button4.released();
  button5.released();
  button6.released();
  button7.released();
  button8.released();
  button9.released();
  button10.released();
}
void mousePressed() {
  if (button.clicked(mouseX,mouseY)) {
   println("on");
    myPort.write(22);
  }
  /*....................*/
  if (button2.clicked(mouseX,mouseY)) {
    println("square 4");
    myPort.write(1); 
  }
  if (button3.clicked(mouseX,mouseY)) {
     println("square 3");
    myPort.write(2);
  }
  if (button4.clicked(mouseX,mouseY)) {
      println("square 2");
    myPort.write(3); 
  }
  if (button5.clicked(mouseX,mouseY)) {
    println("square 1");
    myPort.write(4); 
  }
  if (button6.clicked(mouseX,mouseY)) {
        println("square 8");
    myPort.write(5); 
  }
  if (button7.clicked(mouseX,mouseY)) {
      println("square 7");
    myPort.write(6);
  }
  if (button8.clicked(mouseX,mouseY)) {
     println("square 6");
    myPort.write(7); 
  }
  if (button9.clicked(mouseX,mouseY)) {
    println("square 5");
    myPort.write(8); 
  }
  if (button10.clicked(mouseX,mouseY)) {
    println("off");myPort.write(23);
  }
  
}
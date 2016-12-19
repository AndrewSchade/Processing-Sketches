Start a new sketch with draw and setup methods.
void setup(){
0. Set your canvas size
  size(800, 800)
}
draw(){
1. Draw a biscuit colored ellipse for the pizza base, a red ellipse for sauce and a yellow ellipse inside (for the cheese). Do this in the setup method.
  fill(180, 133, 0)
ellipse(400, 400, 600, 600)
fill(201,10,0)
ellipse(400,400,550,550)
fill(255,240,98)
ellipse(400,400,510,510)
}
2. Get a topping for your pizza.
http://beej.us/pizza/pizza.menu.html
i) Save the image.
  ii) Drop the file onto your sketch.
  iii) Load the topping image (in draw method)
    PImage pepperoni = loadImage("pepperoni.gif")  
    image(pepperoni, x, y)

3. Resize your topping image. You need to do this before the image command.
pepperoni.resize(10, 10)

4. Add more toppings. 
  image(toppingImage, x, y)

5. Add the toppings where the user clicks the mouse (in draw method)
  if(mousePressed){
  draw(){
    fill(216,72,72);
    ellipse(mouseX,mouseY, 50,50);
  }

6. Play a sound when you add a topping…. 

//first download a sound from freesound.org and drop it onto your sketch

import processing.sound.*;            //at the top of your sketch
SoundFile sound;        //at the top of your sketch
sound = new SoundFile(this, "ding.wav");  //in the setup method      
sound.play();          //where you want the sound to play

7. [Optional] Add a different topping with the right mouse click.
if (mousePressed && (mouseButton == RIGHT)){
  draw(){
    fill(57,242,34);
    ellipse(mouseX,mouseY,60,10);
    fill(35,144,22);
    ellipse(mouseX+60,mouseY,20,40);
  }
8. [Optional] Use a background image to put the pizza in a box.
PImage pizzaBox = loadImage("box.jpg");  //in setup method
pizzaBox.resize(width, height);  //to match your canvas size
background(pizzaBox);          //in setup method







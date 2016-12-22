  import ddf.minim.*;        
AudioSample sound;
PImage catPic;
  int x=450;
  int y=485;
  int x2 = 665;
  int y2 = 385;
  int acceleration = 10;
void setup(){
noStroke();
  size(1200,800);
  catPic = loadImage("cat-istock.jpg");
    catPic.resize(width, height);  // to match your size
background(catPic);
Minim minim = new Minim(this);        
sound = minim.loadSample("pew-pew.wav");

 
}

void draw(){
  
  if(mousePressed){
  fill(253,131,255);
ellipse(x,y,90,90);
  fill(253,131,255);
ellipse(x2,y2,90,90);
if(x==450){
    sound.trigger();
  }
keyPressed();

}else{
  background(catPic);
  x=450;
  y=485;
  x2=665;
  y2=385;
}


}


void keyPressed(){
    x++;
    y++;
    x2++;
    y2++;
    y-=2*acceleration; 
    x-=2*acceleration;
    x2-=2*acceleration;
    y2-=2*acceleration;
  }

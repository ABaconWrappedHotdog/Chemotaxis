Mover [] colony;
void setup(){
size(510,510);

  colony = new Mover[100];
  for(int i=0; i<colony.length; i++)
  {
    colony[i] = new Mover((int)(Math.random()*500),(int)(Math.random()*500));
  }
}
void draw(){
  background(173);
  
 for(int i=0; i<colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
  fill(255);
  text("Refresh to restart the game",190,100);
}

class Mover{
  int myX,myY,size, colour;
  Mover(int x, int y){
  myX = x;
  myY = y;
  colour = color(255,0,0);
  }
  void move(){
    if ((mouseX <= myX+20&& mouseX >= myX-20) && (mouseY <= myY+20&& mouseY >= myY-20)){
    colour = color(0,255,0);
    }
    if (myX >= 500) {
      myX = 500; 
    }
    if (myY >= 500) {
      myY = 500; 
    }
    if (myX <= 10) {
      myX = 10; 
    }
    if (myY <= 10) {
      myY = 10; 
    }
    /*else*/ if (mouseX > myX) {
      myX = myX - (int)(Math.random()*5);
    } else {
      myX = myX + (int)(Math.random()*5);
    }
    if (mouseY > myY) {
      myY = myY - (int)(Math.random()*5);
    } else {
      myY = myY + (int)(Math.random()*5);
    }
    
    
  }
  void show(){
    //background(173);
    fill(colour);
  ellipse(myX,myY,25,25);
  }
}


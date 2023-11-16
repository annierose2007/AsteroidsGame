Star[] nightSky = new Star[600];
public void setup(){
  size(500,500);
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw(){
  background(14,23,77);
  for(int i = 0; i < nightSky.length; i++){
   nightSky[i].show();  
  }
  if(turnRight == true){
    bob.turn(5);
  } else {
    bob.turn(0);
  }
  if(turnLeft == true){
    bob.turn(-5);
  } else {
    bob.turn(0);
  }
  if(moveForward == true){
    bob.accelerate(0.1);
  } else {
    bob.accelerate(0);
  }
  if(moveBackward == true){
    bob.accelerate(-0.1);
  } else {
    bob.accelerate(0);
  }
  bob.move();
  bob.show();
}
public void keyPressed(){
 if(key == 'r'){
   bob.hyperspace();
 }
 if(key == 'd'){
   turnRight = true;
 }
 if(key == 'a'){
   turnLeft = true;
 }
 if(key == 'w'){
   moveForward = true;
 }
 if(key == 's'){
   moveBackward = true;
 }
}

public void keyReleased(){
  if(key == 'd'){
    turnRight = false;
  }
  if(key == 'a'){
    turnLeft = false;
  }
  if(key == 'w'){
    moveForward = false;
  }
  if(key == 's'){
    moveBackward = false;
  }
}class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(10);
  }
  public void show(){
    fill(255,255,255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    //doesn't wrap around screen
    myCenterX += myXspeed;   
    myCenterY += myYspeed;     
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*750)+1;
    myCenterY = (int)(Math.random()*750)+1;
    myPointDirection = Math.random()*360;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}

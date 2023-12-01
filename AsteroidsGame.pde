Star[] nightSky = new Star[500];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> armstrong;
boolean turnLeft, turnRight, moveForward, moveBackward;
public void setup() 
{
  size(750,750);
  armstrong = new ArrayList <Asteroid>();
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i = 0; i<30; i++){
    armstrong.add(new Asteroid());
  }
}
public void draw(){
  background(14,23,77);
  for(int i = 0; i < nightSky.length; i++){
   nightSky[i].show();  
  }
  bob.move();
  bob.show();
  for(int i = 0; i < armstrong.size(); i++){
    armstrong.get(i).move();
    armstrong.get(i).show();
    double distance = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)armstrong.get(i).getCenterX(), (float)armstrong.get(i).getCenterY());
    if(distance<23) {
      armstrong.remove(i);
    }
  }
  if(turnRight == true){
    bob.turn(5);
  } 
  else {
    bob.turn(0);
  }
  if(turnLeft == true){
    bob.turn(-5);
  } 
  else {
    bob.turn(0);
  }
  if(moveForward == true){
    bob.accelerate(0.1);
  } 
  else {
    bob.accelerate(0);
  }
  if(moveBackward == true){
    bob.accelerate(-0.1);
  } 
  else {
    bob.accelerate(0);
  }
}

public void keyPressed(){
     if(key == 'h'){
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
  }

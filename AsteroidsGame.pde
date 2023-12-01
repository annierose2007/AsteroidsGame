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
    }
  }
 
public void keyPressed(){
     if(key == 'h'){
       bob.hyperspace();
     }
     if(key == 'd'){
       bob.turn(20);
     }
     if(key == 'a'){
       bob.turn(-20);
     }
     if(key == 'w'){
       bob.accelerate(0.5);;
     }
     if(key == 's'){
       bob.accelerate(-0.5);
     }
   }

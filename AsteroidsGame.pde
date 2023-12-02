private Star[] nightSky = new Star[500];
private Spaceship bob = new Spaceship();
private ArrayList <Asteroid> armstrong = new ArrayList<Asteroid>();;
boolean turnLeft, turnRight, moveForward, moveBackward;
public void setup(){
  size(750,750);
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
   for (int i = 0; i< armstrong.size(); i++) {
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)armstrong.get(i).getX(), (float)armstrong.get(i).getY());
    if (d<30){
      armstrong.remove(i);
      i--;
    }
  }
  if (armstrong.size() == 0) {
    for (int i = 0; i < 15; i++){
      armstrong.add(new Asteroid());
    }
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

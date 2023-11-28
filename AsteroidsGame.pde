Spaceship bob = new Spaceship();
Star[] bar;
public void setup() 
{
  size(500,500);
  bob.myCenterX = width/2;
  bob.myCenterY = height/2;
  bar = new Star[400];
  for (int i = 0; i<bar.length;i++){
    bar[i] = new Star();
  }
}
public void draw() 
{
  background(14,23,77);
  for (int i =0; i<bar.length;i++){
    bar[i].show();
  }
  bob.show();
  bob.move();
}

public void keyPressed(){
  if(key == 'h'){
    bob.hyperspace();
  }
  else if (key == 'a'){
    bob.turn(-20);
  }
  else if (key == 'd'){
    bob.turn(20);
  }
  else if (key == 'w'){
    bob.accelerate(0.5);
  }
  else if (key == 's'){
    bob.accelerate(-0.5);
  }
}
for(int i = 0; i < asteroids.size(); i++) {
  asteroids.get(i).show();
  asteroids.get(i).move();
  if(dist((float)spaceship.getX(), (float)spaceship.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY()) <= 30){
      asteroids.remove(asteroids.get(i)); 
      }
    } 

Spaceship neil;
Star [] stars = new Star[200];
ArrayList <Asteroid> armstrong;
public void setup() 
{
  size(500,500);
  background(245,98,40);
  neil = new Spaceship();
  armstrong = new ArrayList <Asteroid>();
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for(int i = 0; i<20; i++) 
    armstrong.add(new Asteroid());
}

public void keyPressed() {
  if(key == 'h') 
    neil.hyperspace();
  if(key == 'w') 
    neil.accelerate(0.5);
  if(key == 'a') 
    neil.turn(-7);
  if(key == 's') 
    neil.accelerate(-0.5);
  if(key == 'd') 
    neil.turn(7);
} 
public void draw() {
  background(245,98,40);
  for(int i=0; i<stars.length; i++) {
    stars[i].show();
  }
  neil.move();
  neil.show();
  for(int i = 0; i < armstrong.size(); i++){
    armstrong.get(i).move();
    armstrong.get(i).show();
    }
   }

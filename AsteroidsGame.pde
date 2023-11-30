Spaceship neil;
Star [] stars = new Star[200];
ArrayList <Asteroid> armstrong;
ArrayList <Bullet> pew;
public void setup() 
{
  size(500,500);
  background(0);
  neil = new Spaceship();
  armstrong = new ArrayList <Asteroid>();
  pew = new ArrayList <Bullet>();
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
  if(key == 'j')
    pew.add(new Bullet(neil));
} 
public void draw() {
  background(0);
  for(int i=0; i<stars.length; i++) {
    stars[i].show();
  }
  neil.move();
  neil.show();
  for(int i = 0; i < armstrong.size(); i++){
    armstrong.get(i).move();
    armstrong.get(i).show();
    double distance = dist((float)neil.getCenterX(), (float)neil.getCenterY(), (float)armstrong.get(i).getCenterX(), (float)armstrong.get(i).getCenterY());
    if(distance<23) {
      armstrong.remove(i);
    }
      for(int j = 0; j < pew.size(); j++) {
       double distance2 = dist((float)pew.get(j).getCenterX(), (float)pew.get(j).getCenterY(), (float)armstrong.get(i).getCenterX(), (float)armstrong.get(i).getCenterY());
       if(distance2<20) {
         armstrong.remove(i);
         pew.remove(j);
         break;
       }
     }
   }
  for(int i = 0; i < pew.size(); i++) {
    pew.get(i).move();
    pew.get(i).show();
  }
  
}

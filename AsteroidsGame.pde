//your variable declarations here
SpaceShip rock;
Star[] nightSky = new Star[500];

ArrayList <Bullet> gun = new ArrayList <Bullet>();
ArrayList <Asteroid> theList = new ArrayList <Asteroid>();
public void setup(){
  size(600,600);
  rock = new SpaceShip();
  for(int i = 0; i < nightSky.length; i++){
    nightSky [i] = new Star();
  }
  for(int i = 0; i < 500; i++){
    theList.add(new Asteroid());
  }
}

public void draw(){
  background(14,23,77);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i< 35; i ++){
    theList.get(i).show();
    theList.get(i).move();
  }

  for(int i = 0; i< gun.size(); i ++)
  {
    gun.get(i).show();
    gun.get(i).move();
  }
for(int k = 0; k < gun.size(); k++)
{
  for(int i = 0; i< theList.size(); i ++)
    if(dist(gun.get(k).getX(),gun.get(k).getY(), theList.get(i).getX(),theList.get(i).getY()) < 20)
    {
      theList.remove(i);
    }
  }
  for(int i = 0; i< theList.size(); i ++)
    if(dist(rock.getX(),rock.getY(), theList.get(i).getX(),theList.get(i).getY()) < 30)
    {
      theList.remove(i);
    }
  rock.show();
  rock.move();
}

public void keyPressed()
{

  if(key == ' ')
  { 
    gun.add(new Bullet(rock));

  }   
  if(keyCode == UP)
  {
    rock.accelerate(1);
  }
  else if(keyCode == RIGHT)
  { 
    rock.rotate(7);
  }
  else if(keyCode == LEFT)
  { 
    rock.rotate(-7);
  }
  else if(keyCode == DOWN)
  { 
    rock.accelerate(-1.5);
  }
   else if(key == 'b')
  { 
    rock.setDirectionX(0);
   rock.setDirectionY(0);
  }   
   else if(key == 'h')
  { 
    rock.hyperspace();
  }      
  else if(key == 'x')
  { 
    rock.accelerate(500);

  }    

}

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

class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor, myStrokeColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myXspeed, myYspeed; //holds the speed of travel in the x and y directions   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (double degreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=degreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myStrokeColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 
class Star //note that this class does NOT extend Floater
{  
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*750);
    myY = (int)(Math.random()*750);
  }
  public void show(){
   fill(255);
   stroke(255);
   ellipse(myX, myY, 2, 2);
  }
}

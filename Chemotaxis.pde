Bacteria [] bob = new Bacteria[500];
void setup()   
{     
  size(400, 400);
  for (int i = 0; i < bob.length; i++){
    bob[i] = new Bacteria();
  }
}   
void draw()   
{    
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}  
class Bacteria    
{     
  int myX;
  int myY;
  int myColor;
  Bacteria()
  {
    myX = 200;
    myY = 200;
    myColor =  color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  void show()
  {
     fill(myColor);
     ellipse(myX, myY, 3, 3);
  }
  void move()
  {
    myY = myY + (int)(Math.random() * 7) - 3;
    myX = myX + (int)(Math.random() * 7) - 3;
  }
}    

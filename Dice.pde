void setup()
{
  size(500, 500);
  noLoop();
  textAlign(CENTER);
}
void draw()
{
  background(119, 140, 126);
  int sum = 0;
  for(int y = 10; y < 450; y = y + 50) 
  {
    for(int x = 25; x < 450; x = x + 50) {
    Die first = new Die(x, y);
    first.show();
    sum = sum + first.diceRoll;
    }
  }
  fill(250, 229, 192);
  textSize(20);
  text("Total: " + sum, 250, 485);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  int diceRoll;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    //your code here
    diceRoll = (int)(Math.random()*6) + 1;
    
  }
  void show()
  {
    //your code here
    stroke(247, 243, 188);
    fill((int)(Math.random()*78)+138, (int)(Math.random()*78)+138, (int)(Math.random()*78)+138);
    rect(myX, myY, 50, 50, 8);
    fill(0);
    if(diceRoll == 1)
    {
      fill(38, 36, 36);
      ellipse(myX+25, myY+25, 10, 10);
    } else if(diceRoll == 2) {
      fill(38, 36, 36);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
    } else if(diceRoll == 3) {
      fill(38, 36, 36);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if(diceRoll == 4) {
      fill(38, 36, 36);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if(diceRoll == 5) {
      fill(38, 36, 36);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if(diceRoll == 6) {
      fill(38, 36, 36);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    }
  }
}

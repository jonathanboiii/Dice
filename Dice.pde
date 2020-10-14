Die bob1,bob2,bob3,bob4,bob5,bob6,bob7,bob8,bob9;
int globalvalue = 0;
void setup()
  {
      noLoop();
      bob1 = new Die(0,0);
      bob2 = new Die(33,0);
      bob3 = new Die(66,0);
      bob4 = new Die(0,33);
      bob5 = new Die(33,33);
      bob6 = new Die(66,33);
      bob7 = new Die(0,66);
      bob8 = new Die(33,66);
      bob9 = new Die(66,66);
  }
  void draw()
  {
    bob1.show();
    bob2.show();
    bob3.show();
    bob4.show();
    bob5.show();
    bob6.show();
    bob7.show();
    bob8.show();
    bob9.show();
  }
  void mousePressed()
  {
      bob1.roll();
      bob2.roll();
      bob3.roll();
      bob4.roll();
      bob5.roll();
      bob6.roll();
      bob7.roll();
      bob8.roll();
      bob9.roll();
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int value = 0;
      int myX,myY,sumvalue = 0;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          
      }
      void roll()
      {
          value = (int)(Math.random()*6) + 1;
          System.out.println("You rolled a " + value);
          globalvalue += value;
          System.out.println("Your total now is " + globalvalue);
      }
      void show()
      {
          fill(255);
          rect(myX,myY,33,33,5);
          

          
      }
  }

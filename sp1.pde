int rad = 60;        // radius of ball
float xpos, ypos;    // start location of ball    

float xspeed = 5;  // Speed of x ball
float yspeed = 5;  // Speed of y ball

int xdirection = 1;  // Left , Right
int ydirection = 1;  // Top , Bottom
int xline,yline; // for the line
int score = 0;
PFont f;


void setup() 
{
  //windwos size
  size(600, 800);
  stroke(255);
  frameRate(30);
  ellipseMode(RADIUS);
  // position ball start
  xpos = width/2;
  ypos = height/2;

}

void draw() 
{
  gameball();
  gameline();
  
    
}

//key setup
void keyPressed() {
  if (key == 'a' && xline != 1) {
   //when press key it take xline and minus so its move from its x kordinat so its folow and not getingin longer
    xline = xline -10;
  
  }
  else if (key == 'd' && xline != -1) {
   //when press key it take xline and plus so its move from its x kordinat
    xline = xline+10;
 
  }
}
  
  

   

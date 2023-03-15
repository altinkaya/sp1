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
  void gameline(){
    // i make a xline and yline so i can move the line with key 
    line(xline, 750, yline, 750);  
      yline = xline-200;
      yline = xline+200;
  
  }
  
void gameball() {
  background(51);
  fill(255);
  f = createFont("Arial", 16, true);
  textFont(f, 36);
  text("Score " + score, 10, 100);

  // Check if ball hit line 
  //in the reality we doesent have a line thaht the ball hit its just at viseul effekt the ball hit the kordinate of the line 
  //so we say if xpos>=xline -200 (for the pos) than bounce back and so on and to last we say 750 because its the kordiante for its location at the screan 
  if (xpos >= xline - 200 && xpos <= xline + 200 && ypos + rad >= 750) {
    ydirection = -ydirection; // Make ball bounce back
    score++; // Increment score
  }

  // Update ball position
  xpos = xpos + (xspeed * xdirection);
  ypos = ypos + (yspeed * ydirection);

  // Test to see if the ball exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width - rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height - rad || ypos < rad) {
    ydirection *= -1;
  }

  // Draw the ball
  ellipse(xpos, ypos, rad, rad);
  
  //for loop random color 
    for(int x = 0; x < width; x++){
      float r = random(256);
      float g = random(256);
      float b = random(256);
      stroke(r, g, b);
      
     
    }
  
   
   
}

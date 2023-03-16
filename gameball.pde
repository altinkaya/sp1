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
  //if  ball hit bottom reset score and make a flash with background color change 
   if (ypos > height - rad) {
    background(255);
   score = 0;
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
  

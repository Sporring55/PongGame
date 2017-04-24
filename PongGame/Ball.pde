class Ball {
  float xspeed = floor(random(-1,1));
  float yspeed = 0;
  float cY = 2;
  float cX = 7;
  int bX = width/2;
  int bY = height/2;
  float r = 12;
  int lScore = 0;
  int rScore = 0;
  float xNew = xspeed * cX;
  
 void show(){
   fill(255);
   stroke(255);
   ellipse(bX,bY, r*2,r*2); 
   textFont(font);
   text("Score: " + lScore, 80, 50);
   text("Score: " + rScore, 700, 50);
 }
 void bMove(){
   bX += xNew;
   bY += yspeed;
   if(xNew == 0){
    xNew += cX; 
   }
   if(yspeed > cY){
      yspeed = cY; 
   }
   if(yspeed < -cY){
    yspeed = -cY; 
   }
 }
 void edges(){
   if(bY == height || bY == 0){
      yspeed *= -1; 
   }
 }
 void hitL(Stick s){
    if(bY < s.y + s.h/2 && bY > s.y - s.h/2 && bX-r < s.x + s.w/2 && bY > 0){
     xNew *=-1;  
      if(bY < s.y -s.h/2 + 50){
           yspeed = -cY;
      }
      else if(bY > s.y -s.h/2 + 50){
         yspeed = cY;
       }
       else {
        yspeed = 0; 
       }
    }      
   }
     
   void hitR(Stick s){
    if(bY < s.y + s.h/2 && bY > s.y - s.h/2 && bX+r > s.x - s.w/2 && bY > 0){
       xNew *=-1;
      if(bY < s.y -s.h/2 + 50){
         yspeed = -cY;
       }
      else if(bY > s.y -s.h/2 + 50){
         yspeed = cY;
       }
       else {
        yspeed = 0; 
       }
    }
    
      
   }

 void reset() {
   
    if(bX > width){
       bX = width/2;
       bY = height/2;
       lScore++; 
       xNew = -cX;
       yspeed = 0;
       
     
    }
    if(bY > height || bY < 0){
      bX = width/2;
      bY = height/2;
      
    }
    if(bX < 0){
      bX = width/2;
      bY = height/2;
      rScore++;
      xNew = cX;
      yspeed = 0;
      
     
     
      
    }
 
    
  }
   
  void keyPressed(){
   if(key == 'c'){
     bX = width/2;
     bY = height/2;
     
   }
   if(key == 'v'){
     yspeed = -1;
     xspeed = -5;
   }
   
   }   
 }
  
 
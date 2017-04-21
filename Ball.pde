class Ball {
  float xspeed = floor(random(-1,1));
  float yspeed = 0;
  int bX = width/2;
  int bY = height/2;
  float r = 12;
  int lScore = 0;
  int rScore = 0;
  float xNew = xspeed *5;
  
 void show(){
    
   fill(255);
   stroke(255);
   ellipse(bX,bY, r*2,r*2); 
   textFont(font);
   text("Score: " + lScore, 40, 50);
   text("Score: " + rScore, 600, 50);
 }
 void bMove(){
   bX += xNew;
   bY += yspeed;
   //println(xNew);
   println(yspeed);
   if(xNew == 0){
    xNew += 5; 
   }
   if(yspeed > 2.7){
      yspeed = 2.7; 
   }
   if(yspeed < -2.7){
    yspeed = -2.7; 
   }
 }
 void edges(){
   if(bY == height || bY == 0){
      yspeed *= -1; 
   }
 }
 void hitL(Stick s){
    if(bY < s.y + s.h/2 && bY > s.y - s.h/2 && bX-r < s.x + s.w/2){
     xNew *=-1;  
      if(bY < s.y -s.h/2 + 50){
           yspeed = -2.7;
      }
      else if(bY > s.y -s.h/2 + 50){
         yspeed = 2.7;
       }  
    }      
   }
     
   void hitR(Stick s){
    if(bY < s.y + s.h/2 && bY > s.y - s.h/2 && bX+r > s.x - s.w/2){
       xNew *=-1;
      if(bY < s.y -s.h/2 + 50){
         yspeed = -2.7;
       }
      else if(bY > s.y -s.h/2 + 50){
         yspeed = 2.7;
       }
    }
    
      
   }

 void reset() {
   
    if(bX > width){
       bX = width/2;
       bY = height/2;
       lScore++; 
       xNew = -5;
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
      xNew = 5;
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
  
 
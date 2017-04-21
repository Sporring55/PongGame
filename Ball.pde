class Ball {
  float xspeed = 0;
  float yspeed = 0;
  int bX = width/2;
  int bY = height/2;
  float r = 12;
  int lScore = 0;
  int rScore = 0;
 void show(){
   fill(255);
   stroke(255);
   ellipse(bX,bY, r*2,r*2); 
   textFont(font);
   text("Score: " + lScore, 40, 50);
   text("Score: " + rScore, 600, 50);
 }
 void bMove(){
   bX += xspeed;
   bY += yspeed;
 }
 void edges(){
   if(bY == height || bY == 0){
      yspeed *= -1; 
   }
 }
 void hitL(Stick s){
    if(bY < s.y + s.h/2 && bY > s.y - s.h/2 && bX-r < s.x + s.w/2){
     xspeed *=-1;  
    if(bY < s.y -s.h/2 + 50){
         yspeed += -1;
       }
      else if(bY > s.y -s.h/2 + 50){
         yspeed += 1;
       }  
    }
    println(bY > s.y -s.h/2 + 50);
      
   }
     
   void hitR(Stick s){
    if(bY < s.y + s.h/2 && bY > s.y - s.h/2 && bX+r > s.x - s.w/2){
       xspeed *=-1;
      if(bY < s.y -s.h/2 + 50){
         yspeed += -1;
       }
      else if(bY > s.y -s.h/2 + 50){
         yspeed += 1;
       }
    }
    
      
   }

 void reset() {
  if(bX > width){
     bX = width/2;
     bY = height/2;
     lScore++;  
  }
  if(bX < 0){
    bX = width/2;
    bY = height/2;
    rScore++;
    
  }
 
    
  }
   
  void keyPressed(){
   if(key == 'c'){
     bX = width/2;
     bY = height/2;
     yspeed = 0;
     xspeed = 0;
   }
   if(key == 'v'){
     yspeed = 1;
     xspeed = -5;
   }
   
   }   
 }
  
 
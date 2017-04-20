class Ball {
  float xspeed = floor(random(-3, 3));
  float yspeed = -1;
  int bX = width/2;
  int bY = height/2;
  float r = 12;
  int lScore = 0;
  int rScore = 0;
 void show(){
   fill(255);
   stroke(255);
   ellipse(bX,bY, r*2,r*2); 
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
    }
      
    }
     void hitR(Stick s){
    if(bY < s.y + s.h/2 && bY > s.y - s.h/2 && bX+r > s.x - s.w/2){
     xspeed *=-1;   
    }
      
    }

void reset() {
  if(bX > width){
     bX = width/2;
     bY = height/2;
     lScore++;
     xspeed = floor(random(-5, 5));
     
  }
  if(bX < 0){
    bX = width/2;
    bY = height/2;
    rScore++;
    xspeed = floor(random(-5, 5));
    println(rScore);
    
  }
     
  }
  
 
}
class Stick {
  float x; 
  float y = height/2;
  float h = 100;
  float w = 20;
  float ychange = 0;
   Stick(float x_){
     x = x_;
   }
  void show(){
    fill(255);
    rectMode(CENTER);
    rect(x,y,w,h);
  }
  void update(){
    y += ychange;
    y = constrain(y,h/2, height - h/2); 
  }
  void move(float steps){
      ychange = steps; 
  }

}
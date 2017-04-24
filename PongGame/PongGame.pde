Ball ball;
Stick left;
Stick right;
PFont font;
void setup(){
 size(800, 600);
 ball = new Ball();
 right = new Stick(width - 20);
 left = new Stick(0 + 20);
 font = createFont("../font/pixel.TTF", 22);
 
}
void draw(){
  background(0);
  ball.show();
  ball.bMove();
  ball.edges();
  ball.reset();
  ball.hitR(right);
  ball.hitL(left);
  ball.keyPressed(); 
  
 
  
  right.update();
  left.update();
  right.show();
  left.show();
  stickReset();
  
  
}
void keyReleased(){
  left.move(0);
  right.move(0);
  
}
void keyPressed(){
 if(key == 'w'){
   left.move(-4);
 }
 else if(key == 's'){
   left.move(4);
 }
 if(key == 'o'){
   right.move(-4);
 }
 else if(key == 'l'){
   right.move(4);
 }
 redraw();  
}
void stickReset(){
 
 if(ball.bX > width || ball.bX < 0){
  left.y = height/2;
  right.y = height/2;
 }
}







  
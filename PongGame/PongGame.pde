Ball ball;
Stick left;
Stick right;
Front front;
Ai aiC;
PFont font;

PImage img;
boolean player = false;
boolean ai = false;
boolean howTo = false;
void setup(){
 size(800, 600);
 ball = new Ball();
 right = new Stick(width - 20);
 left = new Stick(0 + 20);
 front = new Front();
 aiC = new Ai();
 font = createFont("../font/pixel.TTF", 22);
 img = loadImage("../image/pongImg.jpg");
 
}
void draw(){
  background(0);

  image(img,0,0);
  if(player == false && ai == false && howTo == false){
    front.frontPage();
  }
  if(howTo == true){
   front.how(); 
   ai = false;
   player = false;
  }
  if(player == true){
    ai = false;
    howTo = false;
    //Ball
    ball.show();
    ball.bMove();
    ball.edges();
    ball.reset();
    ball.hitR(right);
    ball.hitL(left);
    ball.keyPressed(); 
    //Paddles
    right.update();
    left.update();
    right.show();
    left.show();
    if(ball.bX <= 1 || ball.bX >= width-1){
      right.stickReset();
      left.stickReset();
    }
  } 
  if(ai == true){
    player = false;
    howTo = false;
    //Ball
    ball.show();
    ball.bMove();
    ball.edges();
    ball.reset();
    ball.hitR(right);
    ball.hitL(left);
    ball.keyPressed(); 
    //Paddles
    left.show();
    right.show();
    left.update();
    right.update();
    aiC.control(right, ball);
    if(ball.bX <= 1 || ball.bX >= width-1){
      right.stickReset();
      left.stickReset();
    }
  }
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
 if( player == true){
   if(key == 'o'){
     right.move(-4);
   }
   else if(key == 'l'){
     right.move(4);
   }
 }
 if(key == 'q'){
   player = false;
   ai = false;
   howTo = false;
 }
 redraw();  
 
 
}
void mouseClicked(){
  if(mouseY < height/2 && mouseY > height/2 -25){
    player = true;
    println(mouseY);
  }
  if(mouseY < height/2 + 40 && mouseY > height/2 + 20){
   ai = true; 
  }
  if(mouseY < height/2 + 80 && mouseY > height/2 + 60){
   howTo = true; 
  }
  
 }


 
 







  
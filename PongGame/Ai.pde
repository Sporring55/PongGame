class Ai {
  float ais = 3.4;
 void control(Stick s, Ball b) {
   if(s.y + s.h/2 - 2 < b.bY && b.xNew > 0){
      s.y += ais; 
   }
   else if ( s.y - s.h/2 + 2 > b.bY && b.xNew > 0){
    s.y -= ais; 
   }
     
   
 }
  
  
}
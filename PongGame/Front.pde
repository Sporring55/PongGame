class Front {
  String player = "Player VS Player";
  String Ai = "Player vs Ai";
  void frontPage(){
   textAlign(CENTER);
   textFont(font);
   text(player, width/2, height/2);
   text(Ai, width/2, height/2 + 40);
  }
  
}
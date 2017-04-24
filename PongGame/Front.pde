class Front {
  String player = "Player VS Player";
  String Ai = "Player VS Ai";
  String howTo = "How To Play";
  void frontPage(){
   textAlign(CENTER);
   textFont(font);
   text(player, width/2, height/2);
   text(Ai, width/2, height/2 + 40);
   text(howTo, width/2, height/2 + 80);
  }
  void how(){
   textAlign(CENTER);
   textFont(font);
   text("PLAYER MOVMENT", width/2, height/2 - 220);
   text("Player1: move up = W - move down = S", width/2, height/2 -140); 
   text("Player2: move up = O - move down = L", width/2, height/2 -80);
   text("OTHER", width/2, height/2);
   text("HomeScreen: press Q", width/2, height/2+ 60);
  }
  
}
class Bird{
  float posX = width/8;
  float posY = height/2 ,vel = 1;
  float gravity = 0.5;
  float pull = 0;
  float dia = 35;
  Bird(){
    
  }
  
  void display(){
   
    fill(255,0,0);
    if(posY > 0){
    vel -= pull; 
    }
    else
      posY = 0;
      
    
    if(posY + dia/2<height){
    vel += gravity; 
    }
    else
      posY = height - dia/2;
      
       //vel -= pull;
      posY += vel;
    
   
    
    ellipse(posX,posY,dia,dia);
    pull = 0;
  }
  
  
  
}

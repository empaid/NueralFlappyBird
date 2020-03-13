class Slab{
 
  float gap = 150;
  PVector Upos = new PVector(width, random(height/8,height - height/8 - gap));
  PVector Dpos = new PVector(Upos.x, Upos.y + gap);
  PVector dimen = new PVector(40, height - height/8 - gap + 50);
  PVector vel = new PVector(-3,0);
  Slab(){
    
  }
  
  void display(){
    
    fill(255);
    rectMode(CORNER);
    rect(Upos.x,Upos.y,dimen.x,-dimen.y);
    rect(Dpos.x,Dpos.y,dimen.x,dimen.y);
    Upos.add(vel);
    Dpos.add(vel);
  }
  
  
}

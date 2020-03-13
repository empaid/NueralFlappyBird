Bird bird;
ArrayList<Slab> slab;
int slabRate = 100;
int flag = 0;

void setup(){
 size(640,550);
 bird = new Bird(); 
 slab = new ArrayList<Slab>();
 slab.add(new Slab());
}

void draw(){
  background(0);
  bird.display();

  
  for (int i = slab.size()-1; i >= 0; i--) {
      Slab s = slab.get(i);
      s.display();
      if (s.isDead()){ 
        slab.remove(i);
      }
    }
  
  
  flag++;
  if(flag == slabRate){
          slab.add(new Slab());
          flag = 0; 
  }
  
}

void mousePressed(){
  bird.pull = 10;
  bird.vel = 0;
}

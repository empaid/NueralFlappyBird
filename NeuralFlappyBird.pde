Bird bird;

void setup(){
 size(640,550);
 bird = new Bird(); 
  
}

void draw(){
  background(0);
  bird.display();
}

void mousePressed(){
  bird.pull = 10;
  bird.vel = 0;
}

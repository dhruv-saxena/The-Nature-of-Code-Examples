//Random Walker Based on Perlin Noise

class Walker{
  float x,y;
  
  float tx, ty;
  
  Walker(){
    
    tx=0;
    ty = 10000;
  }
  
  void step(){
    x = map(noise(tx), 0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    tx += 0.005;
    ty += 0.005;
  }
  
  void display(){
    stroke(0);
    ellipse(x,y,5,5);
  }
}

Walker w;

void setup(){
  size(640,360);
  w= new Walker();
  background(255);
}

void draw(){
  w.step();
  w.display();
}

int[] x = new int[30];
int[] y = new int[30];
int[] w = new int[30];
int[] h = new int[30];
color[] c = new color[30];

void setup() 
{ 
  size(400, 400, P2D);
  frameRate(20);
  
  int i;
  for(i=0;i<30;i++){
    x[i] = (int)random(350);
    y[i] = (int)random(350);
    w[i] = (int)random(50) + 50;
    h[i] = (int)random(50) + 50;
    c[i] = color(random(256),random(256),random(256));
  }  
} 

int r = 0;

void draw(){
  background(255,255,255);
  int i;
  for(i=0;i<30;i++){
    noStroke();
    if(i == 24){
      fill(r,30,30);
      if(r < 256){
        r += 1;
      }
      else {
        strokeWeight(4);
        stroke(0);
      }
    }
    else {
      fill(c[i]);
    }
    rect(x[i],y[i],w[i],h[i]);
  }
}



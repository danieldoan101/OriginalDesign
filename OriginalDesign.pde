int x=0;
int y=75;
int r=255;
int g=0;
int b=0;
void setup(){
  size(600,400);
}

void draw(){
  hill();
  if(r==255){
    if(g==0){
      if(b!=255){
        b=b+17;
      }        
    }
  }
  if(b==255){
    if(g==0){
      if(r!=0){
        r=r-17;
      }        
    }
  }
  if(b==255){
    if(r==0){
      if(g!=255){
        g=g+17;
      }        
    }
  }
  if(g==255){
    if(r==0){
      if(b!=0){
        b=b-17;
      }        
    }
  }
  if(g==255){
    if(b==0){
      if(r!=255){
        r=r+17;
      }        
    }
  }
  if(r==255){
    if(b==0){
      if(g!=0){
        g=g-17;
      }        
    }
  }
  
  ball(x,y,r,g,b);
  x=x+6;
  y=y+3;
  if (x>625){
    x=0;
    y=75;
  }  
}

void hill(){
  background(71,204,255);
  //197
  cloud(300,200);
  cloud(150, 100);
  cloud(450, 200);
  fill(0,204,0);
  //0,0,0
  noStroke();
  triangle(0,100,600,400,0,600);
}

void cloud(int x, int y){
  noStroke();
  fill(255,255,255);
  ellipse(x,y-25,50,50);
  ellipse(x-35,y,50,50);
  ellipse(x+35,y,50,50);
  rect(x-25,y-5,50,25);
}

void ball(int x,int y,int r,int g,int b){
  stroke(0);
  fill(r,g,b);
  ellipse(x,y,50,50);
}

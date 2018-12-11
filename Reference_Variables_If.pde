int X= 50;
int Y= 50;
int bounce= 5;
int Z= 1;
int i= 1;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  frameRate(120);
  fill(#F9FC66);
  ellipse(X, Y, 50, 50);
  noFill();
  stroke(6);
  arc(X+10, Y-10, 10, 10, radians(180), radians(360));
  arc(X-10, Y-10, 10, 10, radians(180), radians(360));
  fill(255);
  stroke(3);
  arc(X, Y+10, 15, 15, radians(0), radians(180),CHORD);
  fill(0);
  arc(X, Y+10, 15, 15, radians(20), radians(160),CHORD);
  fill(#05CFFF);
  ellipse(X-10, Y-5,5,10);
  ellipse(X+10, Y-5,5,10);
  beginShape();
  noFill();
  vertex(X,Y+5);
  vertex(X-5,Y+5);
  vertex(X,Y);
  endShape(OPEN);


  X=X+bounce;
  Y=Y+Z;


  if (X==width-25 || X<0)
  {
    bounce= bounce*(-1);
  }
  if (Y>width-25 || Y<0)
  {
    Z=Z*-1;
    Y=Y*Z;
  }
  if (Y==0)
  {
    Y=Y+(Y*-1);
  } 
  if (X>width+25 & Y>width+25)
  {
    Z=Z*1;
    bounce=bounce*-1;
  }
  if (X==width & Y==width)
  {
    Z=Z*1;
    bounce=bounce*-1;
  }
  if (X==height & Y==height)
  {
    Z=Z*1;
    bounce=bounce*-1;
  }
}

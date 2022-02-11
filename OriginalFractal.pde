
public void setup()
{
  size(500, 500);
  background(0);
  fill(0);
  stroke(255);
}

public void draw()
{
  stroke(255, 255, 0);
  ellipse(250, 250, 100, 300);
  myFractal(250, 250, 500);
}

public void myFractal(int x, int y, int r)
{
  ellipse(x, y, r, r);
  if (r > 15)
  {
    stroke(255, 0, 0);
    myFractal(x+r/5, y, r/4);
    stroke(255, 0, 0);
    myFractal(x-r/5, y, r/4);
    stroke(255, 0, 0);
    myFractal(x, y+r/6, r/3);
    stroke(255, 0, 0);
    myFractal(x, y-r/6, r/3);
  }
}

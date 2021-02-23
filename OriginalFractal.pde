public void setup()
{
  size(800,800);
}
public void draw()
{
  fractal(400, 400, 2000);
}
public void mouseDragged()//optional
{
  
}
public void fractal(int x, int y, int len)
{
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  circle(x, y, len);
  if(len <= 10)
  {
    
  } else {
      fractal(x+len/2, y, len/2);
      fractal(x-len/2, y, len/2);
      fractal(x, y+len/2, len/2);
      fractal(x, y-len/2, len/2);
  }
}

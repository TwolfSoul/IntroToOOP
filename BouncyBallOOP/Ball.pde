class Ball {
  PVector loc;
  PVector vel;
  int diam;
  color c;

  Ball() 
  {
    diam = 10; 
    loc = new PVector (random(width), random(height));
    vel = new PVector (random(-5, 5), random(-5, 5));
    c = color(random(255), random(255), random(255));
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

void move()
{
  loc.add(vel);

  if (loc.x + diam/2 >= width)
  {
    vel.x = -abs(vel.x);
  } else if (loc.x - diam/2 <= 0) {
    vel.x = abs(vel.x);
  }
  if (loc.y + diam/2 >= height)
  {
    vel.y = -abs(vel.y);
  } else if (loc.y - diam/2 <= 0) {
    vel.y = abs(vel.y);
  }
}
}
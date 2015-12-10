class Ball {
  //declaring all information (fields) contained within the Ball class
  int woof = 20;
  PVector[]loc = new PVector[woof];
  PVector[]vel = new PVector[woof];
  int diam = 10;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() 
  {
    for (int i = 0; i < woof; i++)
    {
      loc[i] = new PVector (random(width), random(height));
      vel[i] = new PVector (random(-5,5), random(-5,5));
      c = color(random(255), random(255), random(255));
    }
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    for (int i = 0; i < woof; i++)
    {
    ellipse(loc[i].x, loc[i].y, diam, diam);
    }
  }

  void move()
  {
    for (int i = 0; i < woof; i++)
    {
      loc[i].add(vel[i]);

      if (loc[i].x + diam/2 >= width)
      {
        vel[i].x = -abs(vel[i].x);
      } else if (loc[i].x - diam/2 <= 0) {
        vel[i].x = abs(vel[i].x);
      }
      if (loc[i].y + diam/2 >= height)
      {
        vel[i].y = -abs(vel[i].y);
      } else if (loc[i].y - diam/2 <= 0) {
        vel[i].y = abs(vel[i].y);
      }
    }
  }
}
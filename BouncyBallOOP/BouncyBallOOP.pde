int woof = 10;
Ball[]howl = new Ball[woof]; //declare a new ball called b

void setup() {
  size(800, 600);
  for (int i = 0; i < woof; i++)
  { //initialize howl as a new object of the Ball class
    howl[i] = new Ball();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < woof; i++)
  {
    howl[i].display();
    howl[i].move();  //call b's display() method
  }
}
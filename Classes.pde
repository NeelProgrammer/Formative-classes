Human Joseph = new Human();
Human secJoseph = new Human("Tommy", color(255, 0, 255), color(0, 255, 0));
Human Human3 = new Human("Joseph", color(random(255), random(255), random(255)), color(random(255), random(255), random(255)));
void setup()
{
  size(800, 800);
}

void draw()
{
  background(0);
  Joseph.Render();
  secJoseph.Render();
  secJoseph.move();
  secJoseph.setX(mouseX);
  secJoseph.setY(mouseY);
  Human3.setY(100);
  Human3.setX(100);
  Human3.Render();

  Joseph.move();
  if (keyPressed)
  {
    if (key == 'd')
    {
      Joseph.right = true;
    }
    if (key == 'a')
    {
      Joseph.left = true;
    }
    if (key == 'w')
    {
      Joseph.up = true;
    }
    if (key == 's')
    {
      Joseph.down = true;
    }
  }
  if (dist(mouseX, mouseY, Joseph.x, Joseph.y)<(75))
  {
    Joseph.Inconversation = true;
    secJoseph.Inconversation = true;
    
  }
  if(Joseph.Inconversation == true || secJoseph.Inconversation == true)
  {
    Joseph.Speak(Joseph.x -25, Joseph.y -150);
    secJoseph.Speak(mouseX - 25, mouseY -100);
  }
  if(dist(mouseX,mouseY, Joseph.x, Joseph.y)> (75))
  {
    Joseph.Inconversation = false;
    secJoseph.Inconversation = false;
  }
}
void keyReleased()
{
  if (key == 'd')
  {
    Joseph.right = false;
  }
  if (key == 'a')
  {
    Joseph.left = false;
  }
  if (key == 'w')
  {
    Joseph.up = false;
  }
  if (key == 's')
  {
    Joseph.down = false;
  }
}

class Human
{
  // data of the class
  boolean Inconversation;
  float sp;
  float x;
  float y;
  int Legscount;
  int Strengthlevel;
  int age;
  String gender;
  int armCount;
  int iq;
  color hairColor;
  String name;
  color eyeColor;
  float charHeight;
  float charweight;
  String nationality;
  boolean isalive;
  boolean right;
  boolean left;
  boolean up;
  boolean down;
  int Skintone;
  boolean ofscreen;
  Human()
  {
    Inconversation = false;
    sp = 5;
    Legscount = 2;
    Strengthlevel = 4;
    age = 32;
    armCount = 2;
    iq = 120;
    hairColor = color(0, 255, 0);
    name = "Neel";
    gender = "male";
    eyeColor = color(0, 200, 100);
    charweight = 50;
    charHeight = 200;
    nationality = "mexican";
    isalive = true;
    Skintone = color(0, 200, 200);
    x = 400;
    y = 400;
    left = false;
    right = false;
    up = false;
    down = false;
    ofscreen = false;
  }
  Human(String _name, color _Skintone, color _Haircolor)
  {
    Legscount = 2;
    Strengthlevel = 4;
    age = 32;
    armCount = 2;
    iq = 120;
    hairColor = _Haircolor;
    name = _name;
    gender = "male";
    eyeColor = color(0, 200, 100);
    charweight = 50;
    charHeight = 200;
    nationality = "mexican";
    isalive = true;
    Skintone = _Skintone;
    x = 400;
    y = 400;
    left = false;
    right = false;
    up = false;
    down = false;
  }
  float GetX()
  {
    return x;
  }
  float GetY()
  {
    return y;
  }
  void Walk()
  {
    println(name +"walks around");
  }
  void Speak(float x, float y)
  {
    println(name + "rambles on aimlessly");
    text("Hello My name is" + " " + name, x -25, y -150);
  }
  void reply(float x, float y, String _name)
  {
    text("see ya " + _name, x -25, y -100);
    text("see ya" +_name, x-25, y-100);
  }
  void die()
  {
    isalive = false;
  }
  void Attack()
  {
    println(name + "swings his fists");
  }
  int GetAge()
  {
    return age;
  }
  void Render()
  {
    rectMode(CENTER);
    fill(Skintone);
    rect(x, y, charweight, charHeight);
    rectMode(CORNER);
    fill(hairColor);
    rect(x -25, y- 100, charweight, 35);

    text(name, x, y-20 );
  }
  void move()
  {
    if (ofscreen == false)
    {
      if ( right == true)
      {

        x = x+sp;
      }
      if ( left == true)
      {
        x = x -sp;
      }
      if ( up == true)
      {
        y = y -sp;
      }
      if ( down == true)
      {
        y = y +sp;
      }
    }

    if (x> width)
    {
      ofscreen = true;
      x = 400;
      sp = 0;
      y = 400;
    } else if (x< 0)
    {
      ofscreen = true;
      x = 400;
      sp = 0;
      y = 400;
    } else  if (y<0)
    {
      ofscreen=true;
      x = 400;
      sp = 0;
      y = 400;
    } else if (y>height)
    {
      ofscreen=true;
      x = 400;
      sp = 0;
      y = 400;
    }
    if (x> 0 & x < width)
    {
      ofscreen = false;
    } else if (y> 0 & y <height)
    {
      ofscreen = false;
    }
  }
  void setX(float val)
  {
    x = val;
  }
  void setY(float val)
  {
    y = val;
  }
 
}
// Important - my collisions dont work all the time - the game takes some time to load - 
// press 'RIGHT' and 'LEFT' to move the gun and press 'UP' to shoot a bullet


//sound for crowd
 import processing.sound.*; 
  SoundFile file;
  String audioName = "Crowdcheering1.mp3";
  String path;
//Gun sound (pew)
import processing.sound.*; 
  SoundFile file1;
  String audioName1 = "GunSound.mp3";
  String path1;
// game over sound
import processing.sound.*; 
  SoundFile file2;
  String audioName2 = "Gameover.mp3";
  String path2;
//target 1
int target1X = 0;
//background
PImage img;
//target 2
int target2X =0;
int target2Y =150;
//target 3
int target3X = 0;
int target3Y = 300;
//target 4
int target4X = 0;
int target4Y = 200;
//gun
PImage gun;
int gunX = 0;
int gunY = 400;
//skeet
PImage skeet1;
//bullet
PImage bullet;
int bulletY = 400;

void setup()
{
  //sound
   path = sketchPath("Crowdcheering1.mp3");
   file = new SoundFile(this, path);
   file.play();
 
  size (600,600); 
  img = loadImage("BackgroundCrowd.jpg");
  gun = loadImage ("gun.png");
  skeet1 = loadImage("skeet1.png");
  bullet = loadImage("bullet.png");
  

}

void draw()
{

 //Background of audiance 
  image(img, 0, 0);
  img.resize(600, 600);
  
// Target 1
// Target 1 skeet
  image(skeet1, target1X, target1Y);
  skeet1.resize(30, 30);
  // upward curve of T1
  target1X = target1X+2;
  target1Y = target1Y-2;
  // straight line of T1
  if (target1X> 150)
  {
   target1Y = target1Y +2;
   // downwardrs curve of T1
   if (target1X > 450)
    {
    target1Y = target1Y + 2;
 
    }
  }
 
  if (target1X > width )
  {
    // target 2
  // target 2 skeet
  image(skeet1,target2X, target2Y);
  skeet1.resize(30, 30);
  // upward curve of T2
  target2X = target2X+2;
  target2Y = target2Y-2;
  // straight line of T2
  if (target2X> 150)
  {
   target2Y = target2Y +2;
   // downwardrs curve of T2
   if (target2X > 450)
    {
    target2Y = target2Y + 2;
 
    }
  }
  }
  if (target2X > width)
  {
    // Target 3
// Target 3 skeet
  image(skeet1, target3X, target3Y);
  skeet1.resize(30, 30);
  // upward curve of T3
  target3X = target3X+2;
  target3Y = target3Y-2;
  // straight line of T3
  if (target3X> 150)
  {
   target3Y = target3Y +2;
   // downwardrs curve of T3
   if (target3X > 450)
    {
    target3Y = target3Y + 2;
 
    }
  }
 
  }
  if (target3X > width)
  {
     // target 4
  // target 4 skeet
  image(skeet1,target4X, target4Y);
  skeet1.resize(30, 30);
  // upward curve of T4
  target4X = target4X+2;
  target4Y = target4Y-2;
  // straight line of T4
  if (target4X> 200)
  {
   target4Y = target4Y +2;
   // downwardrs curve of T4
   if (target4X > 400)
    {
    target4Y = target4Y + 2;
 
    }
  }
  }
   //gameover
   if (target4X > width)
  {
    textSize(42);
text("Game Over", 225, 40); 
fill(0, 102, 153);
  }
  
  // Gun
  image(gun,gunX,gunY);
  gun.resize(80, 200);
  if (gunX > width)
  {
    gunX = 0;
  }
  if (gunX < 0)
  {
    gunX = 600;
  }
 
  
// bullet 
image(bullet, gunX, bulletY);
       bullet.resize(50, 50);
      bulletY = bulletY - 50;
      
    //bullet and target collision
   //target 1
    if (dist(gunX, target1X, bulletY, target1Y) < 50)
    {
       target1X = target1X + 600;
      println ("it works...");

    }
    //taget 2 
    if (dist(gunX, target2X, bulletY, target2Y) < 50)
    {
      target2X = target2X + 600;
      println ("it works...");
     
    }
     //target 3
    if (dist(gunX, target3X, bulletY, target3Y) < 50)
    {
      target3X = target3X + 600;
        println ("it works...");
    }
     //target 4
    if (dist(gunX, target4X, bulletY, target4Y) < 50 )
    {
      target4X = target4X + 600;
      println ("it works...");
    }
    
}

 void keyPressed() 
 {
   //gun movment
   if (key == CODED) 
  {
    if (keyCode == RIGHT) 
    {
      gunX = gunX + 20;
     
    } 
    if (keyCode == LEFT) 
    {
      gunX = gunX - 20;
     
    } 
  } 
  //gun shooting and making sound
  if (key == CODED)
  {
    if (keyCode == UP)
    {
       path1 = sketchPath("GunSound.mp3");
   file1 = new SoundFile(this, path1);
   file1.play();
 
    bulletY = 400; 
  
    }  
   }
  
}
  

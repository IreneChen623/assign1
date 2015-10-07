PImage bg1;
PImage bg2;
PImage hp;
PImage fighter;
PImage enemy;
PImage treasure;

int bg;
int enemy1,enemy2;
int tr1,tr2;
int x,y,w,h;

void setup () 
{
  size(640,480) ;  // must use this size.
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  hp = loadImage("img/hp.png");
  fighter = loadImage("img/fighter.png");
  enemy = loadImage("img/enemy.png");
  treasure = loadImage("img/treasure.png");
  
  //hp
  x=22;
  y=15;
  w=floor(random(60,170));
  h=15;
  
  //enemy
  enemy2=floor(random(60,440));
  
  //treasure
  tr1=floor(random(100,500));
  tr2=floor(random(60,400));
}

void draw() 
{
  //background
  image(bg2,bg,0);
  image(bg1,bg-640,0);
  image(bg2,bg-1280,0);
  bg++;
  bg%=1280;
    
  
  //enemy
  image(enemy,enemy1,enemy2);
  enemy1+=4;
  enemy1%=640;
  
  //hp
  fill(#FF0000);
  rect(x,y,w,h);
  image(hp,10,10);
  
  //fighter
  image(fighter,580,240);
  
  //treasure
  image(treasure,tr1,tr2);
  
}

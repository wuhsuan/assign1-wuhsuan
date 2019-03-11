
int Pixel=80;

//grass
int grassHeight=15;

//life
int lifeX=10;
int lifeY=10;
int lifeSize=50;
int lifeGap=20;

//soldier
float soldierX=0;
float soldierY=160;
float soldierSpeed=5;

//robot
float robotX;
float robotY;

//lacer
float lacerX;
float a,b;
float lacerWidth=10;
float lacerSpeed=2;

//PImage
PImage bg, soil;
PImage groundhogImg, soldierImg, robotImg, lifeImg;

void setup() {
	size(640,480,P2D);

 //image
  bg= loadImage("img/bg.jpg");
  soil= loadImage("img/soil.png");
  groundhogImg= loadImage("img/groundhog.png");
  soldierImg= loadImage("img/soldier.png");
  robotImg= loadImage("img/robot.png");
  lifeImg= loadImage("img/life.png");  
  
 //robot x,y
 robotX= random(160,480);
 robotY= Pixel*2+80*floor(random(4));
 //soldier y
 soldierY= Pixel*2+80*floor(random(4));
 //lacer x
 lacerX=robotX+25;
 
}

void draw() {
  
  background(bg);
 
  imageMode(CORNER);   //set
  
  //soil
  image(soil,0,Pixel*2);
  
  //grass
  noStroke();
  colorMode(RGB);
  fill(124,204,25);
  rectMode(CORNER);
  rect(0,Pixel*2-grassHeight,640,15);
  
  //life
  image(lifeImg,lifeX,lifeY,lifeSize,lifeSize);
  image(lifeImg,lifeX+70,lifeY,lifeSize,lifeSize);
  image(lifeImg,lifeX+140,lifeY,lifeSize,lifeSize);
  
  //goundHog
  imageMode(CENTER);  //set
  image(groundhogImg,Pixel*4,120);
 
  //robot
  imageMode(CORNER);
  image(robotImg,robotX,robotY);
  
  //soldier
  image(soldierImg,soldierX,soldierY,80,80);
  //soldier movement
  soldierX += soldierSpeed;
  soldierX %= 720; 
  
   //draw sun
  stroke(255,255,0);
  strokeWeight(5);
  fill(253,184,19);
  ellipse(590,50,120,120);
  
  //drawlacer
  stroke(255,0,0);
  strokeWeight(lacerWidth);
  line(lacerX-b,robotY+37,lacerX-b-20,robotY+37);
  
  //lacer movement
  a += lacerSpeed;
  b =a % 160;
  
}

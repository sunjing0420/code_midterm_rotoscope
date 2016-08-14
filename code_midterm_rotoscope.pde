// CODE MIDTERM
// Rotoscoping
//
// This sketch loads the assigned frames and plays them back
// Add your own draw code
// Then it saves out the rendered frames
//
// DON'T FORGET TO CHANGE THE VALUE OF THE STUDENTNAME VARIABLE TO YOUR NAME!!

import java.io.File;

File[] tempfiles;
ArrayList<File> files;
PImage image;
String currentFilename;

// EDIT THIS LINE WITH YOUR NAME!
String studentName = "JING SUN";

PVector position;
PVector velocity;

PVector position1;
PVector velocity1;

PVector position2;
PVector velocity2;

PVector position3;
PVector velocity3;

void setup() {
  files = new ArrayList<File>();

  // get list of files from directory
  File dir = new File(sketchPath() + "/rawFrames");
  tempfiles = dir.listFiles();

  // filter out files that don't end in .png
  for (int i = 0; i < tempfiles.length; i++) {
    String path = tempfiles[i].getAbsolutePath();
    if (path.toLowerCase().endsWith(".png")) {
      files.add(tempfiles[i]);
    }
    
  }

  // Resize the canvas to full-HD 1080p glory
  size(960, 540);
  //pixelDensity(2);

  // if that doesn't work, comment it out and uncomment this instead:
  //size(1920, 1080);
  //pixelDensity(1);
  
  position=new PVector(-200, 200);
  velocity=new PVector(130, -60);
  
  position1=new PVector(30, 80);
  velocity1=new PVector(60, 60);

  position2=new PVector(0, 10);
  velocity2=new PVector(100, 70);
  
  position3=new PVector(80, 10);
  velocity3=new PVector(40, 30);
}

void draw() {
  // DO NOT ALTER THE LINE BELOW
  prepare();

  // BEGIN ADDING YOUR CODE HERE -----
  
    position.add(velocity);
   
  //draw bird
  noStroke();
  //red 
  fill(213, 0, 44);
  ellipse(150+position.x, 120+position.y, 60, 60);
  ellipse(150+position.x, 90+position.y, 10, 20);
  ellipse(140+position.x, 92+position.y, 8, 12);
  //white
  fill(226,196,168);
  ellipse(150+position.x, 135+position.y, 40, 30);
  //eyes
  fill(255);
  ellipse(145+position.x, 120+position.y, 20, 20);
  ellipse(155+position.x, 120+position.y, 20, 20);
  fill(0);
  ellipse(145+position.x, 120+position.y, 8, 8);
  ellipse(155+position.x, 120+position.y, 8, 8);
  //mouth
  fill(251, 186, 30);
  triangle(140+position.x, 132+position.y, 160+position.x, 132+position.y, 150+position.x, 120+position.y);
  triangle(142+position.x, 132+position.y, 158+position.x, 132+position.y, 150+position.x, 142+position.y);
  //black
  fill(0);
  quad(150+position.x, 117+position.y, 150+position.x, 112+position.y, 135+position.x, 105+position.y, 130+position.x, 110+position.y);
  quad(150+position.x, 117+position.y, 150+position.x, 112+position.y, 165+position.x, 105+position.y, 170+position.x, 110+position.y);
  
    //draw pig
  fill(137,186,32);
  ellipse(420+position1.x,80+position1.y,80,80);
  ellipse(405+position1.x,40+position1.y,16,16);
  ellipse(435+position1.x,40+position1.y,16,16);
  fill(255);
  ellipse(390+position1.x,77+position1.y,15,15);
  ellipse(450+position1.x,77+position1.y,15,15);
  fill(0);
  ellipse(387+position1.x,77+position1.y,5,5);
  ellipse(453+position1.x,77+position1.y,5,5);
  fill(179,201,2);
  ellipse(420+position1.x,78+position1.y,46,40);
  fill(0);
  ellipse(410+position1.x,77+position1.y,10,12);
  ellipse(430+position1.x,77+position1.y,8,10);
  fill(213,0,44);
  ellipse(420+position1.x,105+position1.y,5,5);
  
    //draw pig2
  fill(137,186,32);
  ellipse(420+position2.x,80+position2.y,80,80);
  ellipse(405+position2.x,40+position2.y,16,16);
  ellipse(435+position2.x,40+position2.y,16,16);
  fill(255);
  ellipse(390+position2.x,77+position2.y,15,15);
  ellipse(450+position2.x,77+position2.y,15,15);
  fill(0);
  ellipse(387+position2.x,77+position2.y,5,5);
  ellipse(453+position2.x,77+position2.y,5,5);
  fill(179,201,2);
  ellipse(420+position2.x,78+position2.y,46,40);
  fill(0);
  ellipse(410+position2.x,77+position2.y,10,12);
  ellipse(430+position2.x,77+position2.y,8,10);
  fill(213,0,44);
  ellipse(420+position2.x,105+position2.y,5,5);
 
  //draw pig3
  fill(137,186,32);
  ellipse(420+position3.x,80+position3.y,80,80);
  ellipse(405+position3.x,40+position3.y,16,16);
  ellipse(435+position3.x,40+position3.y,16,16);
  fill(255);
  ellipse(390+position3.x,77+position3.y,15,15);
  ellipse(450+position3.x,77+position3.y,15,15);
  fill(0);
  ellipse(387+position3.x,77+position3.y,5,5);
  ellipse(453+position3.x,77+position3.y,5,5);
  fill(179,201,2);
  ellipse(420+position3.x,78+position3.y,46,40);
  fill(0);
  ellipse(410+position3.x,77+position3.y,10,12);
  ellipse(430+position3.x,77+position3.y,8,10);
  fill(213,0,44);
  ellipse(420+position3.x,105+position3.y,5,5);
if (frameCount>2){
    position1.add(velocity1);
    position2.add(velocity2);
    position3.add(velocity3);
  
}

  // STOP ADDING YOUR CODE HERE -----

  // DO NOT ALTER THE LINES BELOW
  if (frameCount < files.size()) { 
    export();
  } else {
    exit();
  }
}

// DO NOT ALTER THIS FUNCTION!!
void prepare() {
  String path = files.get(frameCount-1).getAbsolutePath();
  currentFilename = files.get(frameCount-1).getName();

  // Load current file into our PImage variable
  tint(255, 255);
  image = loadImage(path);
  image(image, 0, 0, width, height);
}

// DO NOT ALTER THIS FUNCTION!!
void export() {
  // saves frame without watermark
  saveFrame(sketchPath() + "/outFrames/edited_" + currentFilename);

  int sidePadding = 125;
  int bottomPadding = 50;

  textAlign(LEFT);
  textSize(32);
  fill(255);
  text(studentName, sidePadding + 1, height - bottomPadding + 1);
  fill(0);
  text(studentName, sidePadding, height - bottomPadding);

  // saves frame with watermark
  saveFrame(sketchPath() + "/outFrames/watermarked_" + currentFilename);
}
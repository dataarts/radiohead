/*\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
 *
 *  Very Simple Radiohead 3D Animation Viewer 
 *  
 *   by Aaron Koblin
 *
 *   To use-
 *      -download, extract, and open Processing Development Environment (www.processing.org)
 *      -load this file (or paste the contents of this file into Processing and save to a name and location of your choosing)   
 *      -if it doesnt exist, create a folder called "data" inside the sketch folder (the sketch folder is automatically created by Processing, press ctrl+k to see)
 *      -extract all animation csv files into "data" folder (2101 files total)
 *      -press play and enjoy.
 *
 *  Copyright 2008 Aaron Koblin 
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at 
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
 *  See the License for the specific language governing permissions and
 *  limitations under the License. 
 *
 *//////////////////////////////////////////////////////////////

import processing.opengl.*;

// Declare a variable to store which frame we're dealing with
int frameCounter =1;

// The things we're going to do at the beginning of our program
void setup(){
  //This is the size we're going to render at, we'll use OpenGL to make sure all the data draws as fast as possible
  size(1024,768, OPENGL);
  //We could try watch the animation at 30 frames per second. There may be too much to do each frame for this though.
  //frameRate(30);
  
  //Draw lines at a width of 1, for now.
  strokeWeight(1);
  
}
// The things we're going to do every frame
void draw(){
  // We'll use a black background
  background(0);
  // The data has 0,0,0 at the center and we want to draw that point at the center of our screen
  translate(width/2, height/2); 
  // Lets adjust our center slightly
  translate(-150,-150);
  // Lets draw things bigger
  scale(2);

  // This would be a way to rotate over time
  //rotateY(frameCounter/50.0f); 
  
  // This would use the mouse's horizontal location to adjust the rotation
  //rotateY(mouseX/150.0);
  
  // Here we load the current frame data into an array
  String[] raw = loadStrings(frameCounter+".csv");
  // Now we'll loop through each line of the raw data
  for(int i = 0; i < raw.length;i++){
    // For each line we're going to divide up each paramety
    String[] thisLine = split(raw[i],',');
    // Now we will make a variable for each parameter specified in the file. They will be decimal values. 
    float x = float(thisLine[0]);
    float y = float(thisLine[1]);
    float z = float(thisLine[2]);
    int intensity = int(thisLine[3]);
    // We'll set the color of each point to correspond to the data's intensity value
    stroke(intensity*1.1,intensity*1.6,200,255);
    // Here we'll draw a little line for each point this is much faster than a more complex object and we'll be drawing a lot of them
    line(x,y,z,x+1,y+1,z+1);
  }
  //Add one to the frame variable to keep track of what frame we're currently on. 
  frameCounter++;
  
  //If we get to the end of the data we'll exit the program
  if(frameCounter>2101){
    exit();
    println("done");  
  }
  // This would be a way to save out frame *remember you're saving files to your harddrive*
  // saveFrame("renderedFrames/"+frameCounter+".tga");
}

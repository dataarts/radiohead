/*\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
 *
 *   Simple Radiohead Scene Viewer 
 *  
 *   by Aaron Koblin
 *
 *   To use-
 *      -download, extract, and open Processing Development Environment (www.processing.org)
 *      -make sure SceneViewer.pde, Control.pde, and PointCloud.pde are in a folder called "SceneViewer" 
 *      -open SceneViewer.pde in Processing 
 *      -make sure the "data" folder with your scene files exists within the "SceneViewer" folder (press ctrl+k to see)
 *      -go to file>preferences
 *      -check the box next to "set maximum available memory to" and make sure the value is at least 256
 *      -press ok
 *      -press play and enjoy.
 *      -change file names in the setup function to look at different scenes. Play around.
 *
 *   UP and DOWN Arrows control zoom.
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

VBPointCloud cloud;

void setup(){
  size(1024,768, OPENGL);
  cloud = new VBPointCloud(this);
  
  //--------------------------Choose which file to load HERE!-------------------------------------------------------------
  cloud.loadFloats(loadPoints("culdesac.csv"));
//cloud.loadFloats(loadPoints("city.csv"));
}

void draw(){
  background(0);
  
  center();
  rotations();
  zooms();

  stroke(255,50,0,150);
  cloud.draw();
}

float[] loadPoints(String path) {
  String[] raw = loadStrings(path);
  float[] points = new float[raw.length * 3];
  //colors = new float[raw.length*4];
  for (int i = 0; i < raw.length; i++) {
    String[] thisLine = split(raw[i], ",");
    points[i * 3] = new Float(thisLine[0]).floatValue() / 1000;
    points[i * 3 + 1] = new Float(thisLine[1]).floatValue() / 1000;
    points[i * 3 + 2] = new Float(thisLine[2]).floatValue() / 1000;

    //colors[i*4] = new Float(thisLine[3]).floatValue()/3f ;
    //colors[i*4+1] = new Float(thisLine[3]).floatValue()/3f ;
    //colors[i*4+2] = 0f ;
    //colors[i*4+3] = 100f ;

  }
  println("Loaded: "+raw.length+" points");
  return points;
}



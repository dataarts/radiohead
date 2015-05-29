/*\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
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

// Enable the mouse rotation and up and down arrow zooming

float rX,rZ,vX,vZ;
float zoomScale = 1.0;
float zoomScaleTarget = 6.0;

void rotations(){
  rX+=vX;
  rZ+=vZ;
  vX*=.95;
  vZ*=.95;

  if(mousePressed){
    vX+=(mouseY-pmouseY)*.01;
    vZ+=(mouseX-pmouseX)*.01;
  }

  rotateX( radians(-rX) );  
  rotateZ( radians(- rZ) );  
}

void zooms(){
  zoomScale = lerp(zoomScale,zoomScaleTarget,.02); 
  scale(zoomScale);
}

void center(){
  translate(width/2, height/2);  
}

void keyPressed(){
  if(keyCode == UP){
    if(zoomScaleTarget < 50){
      zoomScaleTarget +=.2;
    }
  }
  if(keyCode == DOWN){
    if(zoomScaleTarget > 1){
      zoomScaleTarget -=.2;
    }
  } 
}

////////////////////////////////////////////////
//
//
//  Radiohead House of Cards Data release
//
//  Point cloud data and viewing tools
//
//
////////////////////////////////////////////////

Overview
======================================

  The following applications are included to help load and manipulate the House of Cards point cloud data. 
  They require the Processing programming environment to be run. 


Contents
======================================

  SceneViewer - A Processing tool and data for two scenes from Radiohead House of Cards video

  FaceAnimationViewer - a Processing tool for loading and displaying Thom Yorke face animation data

  HouseOfCards_DataSample.mp3 - the portion of House of Cards song corresponding to the captured animation data

About
======================================

  These applications were written to be used easily in Processing. Processing is an open source programming language 
  and environment for people who want to program images, animation, and interactions. 
  
  Processing is free to download and available for GNU/Linux, Mac OS X, and Windows.
  
  Please visit www.processing.org for more information. 


Installation
======================================
  - Download Processing from www.processing.org/download/
  - Extract and run Processing application 
  - Go to File>open>and choose one of the downloaded PDE files (such as FaceAnimationViewer\FaceAnimationViewer.pde) 

  Follow steps included in PDE file.


LICENSE
======================================
  The two applications (SceneViewer and FaceAnimationViewer) included in this package are released as follows:

 *  Copyright 2008 Aaron Koblin. 
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
 
  The CSV data files are released as follows:
 
 *  Copyright 2008 Radiohead. 
 *  Some Rights Reserved: Data used to produce the House of Cards music video
 *  is made available under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 License


FAQ
======================================
----------------------------
- What kind of data is this?
----------------------------

  The data describes the locations of each render point and is in ASCII CSV format. 
  Which looks like this:

  x,y,z,intensity

---------------------------------------
- Do I need Processing to use the data?
---------------------------------------

  No. The CSV files can be used with any programming language or environment that can read ASCII data. Processing is 
  suggested as the quickest and easiest way to get started.

---------------------------------------------------------------
- Wow, this animation data is really big. What's going on here?
---------------------------------------------------------------

  There is one CSV file for each frame. The animation was recorded at 30fps. There are 2101 total files in this release. 

----------------------------------------------------------------------------------------
- This is cool, but it runs slow and I want to make a video not a program. What do I do?
----------------------------------------------------------------------------------------

  The Processing saveFrame() command will allow you to save an image from each frame. This will let you make an image sequence
  (such as a TGA sequence). That you can use with your favorite video editing application. When you play at 30 frames per 
  second it will sync to the included song sample. 

  Please see "CreateWithData.txt" for more suggestions for using the data and tools provided. 

--------------------------
- It's not working for me.
--------------------------

  Make sure you're using the latest STABLE version of Processing (135 as of this writing), and that you've extracted processing
  from the zip file onto your computer. 

  Make sure the data files are directly within your sketch's "data" directory, and are extracted from any zip files.



Please see the Google Code project for more information: http://code.google.com/p/radiohead/

private double fractionLength = 0.8; 
private int smallestBranch = 5; 
private double branchAngel = 0.3;  
public void setup() 
{   
	size(640,480); 
  //frameRate(10);
} 
public void draw() 
{   
	background(0);   
	stroke(196, 165, 97);   
	line(320,480,320,380); 
  drawBranches(320, 380, 100, 3*Math.PI/2); 
  System.out.println(mouseX);
  System.out.println(mouseY);
 
} 
public void drawBranches(int x,int y, double branchLength, double angel) 
{   
	double angel1 = 0;
  double angel2 = 0;
  
  int endX1 = 0;
  int endY1 = 0;
  int endX2 = 0;
  int endY2 = 0;
  
  angel1 = angel + branchAngel;
  angel2 = angel - branchAngel;
  
  branchLength *= fractionLength;
  
  endX1 = (int)(branchLength*Math.cos(angel1) + x);
  endY1 = (int)(branchLength*Math.sin(angel1) + y);
  endX2 = (int)(branchLength*Math.cos(angel2) + x);
  endY2 = (int)(branchLength*Math.sin(angel2) + y);
  
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  
  
  if(branchLength > smallestBranch){
    drawBranches(endX1, endY1, branchLength, mouseY + angel1); 
    drawBranches(endX2, endY2, branchLength, mouseX + angel2);
    //drawBranches(endX1, endY1, branchLength, -199 + angel1); 
    //drawBranches(endX2, endY2, branchLength, -499 + angel2);
    //drawBranches(endX1, endY1, branchLength, Math.random()*-50); 
    //drawBranches(endX2, endY2, branchLength, Math.random()*-50); 
  }
} 

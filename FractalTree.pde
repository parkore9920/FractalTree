private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(700,700);     
	noLoop(); 
} 
public void draw() 
{   
	background(255);   
	stroke(0, 100, 0);   
	line(350, 625, 350, 500); 
	drawBranches(350, 500, 100, 300);  
	 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);  
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	if (branchLength > smallestBranch)
	{
		drawBranches(endX1, endY1, branchLength * fractionLength, angle1);
		drawBranches(endX2, endY2, branchLength * fractionLength, angle2);
	}   
} 
public void setup()
{
	background(0);
	size(1000,1000);
}
public void draw()
{
	noLoop();
	sierpinski(150,750,700);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 25){
		triangle(x,y,x+len/2,y-len,x+len,y);
	}else{
		fill((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
		sierpinski(x,y,len/2);
		fill((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
		sierpinski(x+len/2,y,len/2);
		fill((float)Math.random()*225,(float)Math.random()*225,(float)Math.random()*225);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}
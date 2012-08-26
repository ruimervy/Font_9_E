/**
*  A Super Simple 'E' drawn by rectangle matrixes.
*  parameters are defined as sets of x and y coordinates
*  quek rui tian mervy 24/08/2012
*  ruimervy@gmail.com
*/

size(400,400);
background(224,232,220);
noStroke();
fill(88,122,76);


int [] x = {120,290,180,270,180,290};
int [] y = {80,130,180,230,280,330};

int Y; //index variable for Y
int X; //index variable for X 
float grain_size = 2; // <- try to change this
float dot_size = grain_size * .9; 
smooth();

int i;
for(i = 0; i < 5; i++ ){
  for(Y = y[i]; Y < y[i+1]; Y = Y + int(grain_size)){
    for(X = x[0]; X < x[i+1]; X = X + int(grain_size)){
    //rect(X,  Y , grain_size, grain_size);
    float d = map(X,x[0],x[i+1],dot_size,dot_size * 0.2);
    rect( X , Y , d, d);
   
    }
  }
}



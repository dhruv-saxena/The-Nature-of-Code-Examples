// Introduction lesson in Nautre of Code
int[] xvalues = {};

void setup() {
  size(640, 360);
  background(255);
}

void draw() {

  int count = -1;
  // Get a gaussian random number w/ mean of 0 and standard deviation of 1.0 i.e will return floats between -3 to 3
  float xloc = randomGaussian();
  float sd = 100;                // Define a standard deviation
  float mean = width/2;         // Define a mean value (middle of the screen along the x-axis)
  xloc = ( xloc * sd ) + mean;  // Scale the gaussian random number by standard deviation and mean
  
  int x = (int)xloc;
  xvalues = append(xvalues,x);
  for(int i=0; i<xvalues.length;i++){
    if (x == xvalues[i]){
        count++;
    }
  }
  
  
  fill(0, 10);
  noStroke();
  

  ellipse(x, height-20 - count*8, 16, 16);   // Draw an ellipse at our "normal" random location
  
}




/**
 * Flocking 
 * by Daniel Shiffman.  
 * 
 * An implementation of Craig Reynold's Boids program to simulate
 * the flocking behavior of birds. Each boid steers itself based on 
 * rules of avoidance, alignment, and coherence.
 * 
 */


//TODO: Look at this for mouse-following: 
//https://processing.org/examples/accelerationwithvectors.html
//Perhaps I can include a hand of god into this
//maybe clicking the mouse focuses prey on one spot,
//forcing predator to catch up
//it'll feel like youre trying to help the flock

//TODO: Look at this for boundaries:
//https://processing.org/examples/handles.html

//TODO: Look at collision algos:
//https://processing.org/examples/circlecollision.html

Flock flock;

void setup() {
  size(640, 360);
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 50; i++) {
    flock.addBoid(new Boid(width/2,height/2));
  }
}

void draw() {
  background(50);
  flock.run();
  
  //TODO: init with some text?
  //  background("#1a0633");
  //  noStroke();
  //  fill(255);
  //  textSize(40);
  //  text("press anything to add boids", centerX, centerY);
  //  return;
}

// Add a new BoidOfPrey
void mousePressed() {
  flock.addBoid(new BoidOfPrey(mouseX,mouseY));
}

// Add new Boid if lowercase letter pressed
// Add new SlowJoinBoid if uppercase letter pressed
// Add new AvoidantBoid if any other key pressed
void keyPressed() {
  //int keyIndex = 0;
  //boolean uppercase = false;
  if((key >= 'A' && key <= 'Z') || (key >= 'a' && key <= 'z')) {
    if(key <= 'Z') {
      //keyIndex = key-'A';
      //uppercase = true;
      flock.addBoid(new SlowJoinBoid(width/2,height/2));
    } else {
      //keyIndex = key-'a';
      for (int i = 0; i < 3; i++) {
        flock.addBoid(new Boid(width/2,height/2));
      }
    }
  } else {
    // TODO: shift is pressed when making capital letters
    // so we'll have an AvoidantBoid for every SlowJoinBoid
    // find a way to exclude shift & caps lock
    flock.addBoid(new AvoidantBoid(width,height));
  }
}

//void keyReleased() {
//}

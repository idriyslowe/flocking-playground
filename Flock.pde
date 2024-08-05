// The Flock (a list of Boid objects)

import java.util.Random;

class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids
  int maxSize = 60;

  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
  }

  void run() {
    ArrayList<Boid> remainingBoids = removeBoids();
    controlPopulation(remainingBoids);
    for (Boid b : remainingBoids) {
      b.run(remainingBoids);  // Passing "current" list to each boid individually
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }
  
  // Return "living" boids
  ArrayList<Boid> removeBoids() {
    ArrayList<Boid> livingBoids = new ArrayList<Boid>();
    for (Boid b : boids) {
      if (b.dead) {
      } else {
        livingBoids.add(b);
      }
    }
    return livingBoids;
  }
  
  // Add BoidOfPrey if there are too many non-predator boids
  void controlPopulation(ArrayList<Boid> population) {
    int predators = 0;
    if (population.size() > maxSize) {
       for (Boid b : population) {
          if (b.predator) {
            predators++;
          }
       }
      if (predators < 2) {
        System.out.println("Too Many Boids! CONTROL POP NOW!");
        Random rand = new Random();
        int randWidth = rand.nextInt(width);
        int randHeight = rand.nextInt(height);
        boids.add(new BoidOfPrey(randWidth,randHeight));
      }
    }
  }
}

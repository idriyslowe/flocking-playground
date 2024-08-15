# FlockingPlay
A flocking simulation is a fun way to play with vectors for visual learners. Allows for some insight into Processing's drawing functions. This is built upon a Processing learning example. (TODO: include link and cred).

## Approach
I'm flushing out all the levers I need to control `Boid` behavior... moving slowly, refactoring as I add features.

## Classes added
- `SlowJoinBoid`: I started with creating a `Boid` which is reluctant to join the flock.
- `AvoidantBoid`: Continued with a `Boid` avoiding the flock altogether.
- `BoidOfPrey`: `Flock` adds a predator to control population when too large. A predator marks other Boids "dead" so they are exluded from the next `Flock.run()`. It also grows each time it kills.

## Functions added
- `Boid.updateColor()`: Worked in some color-changing to identify these "outsiders".
- `FlockingPlay.keyPressed()`: Added keypresses to test various boids.
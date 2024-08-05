// The BoidOfPrey class

class BoidOfPrey extends Boid {
  
  BoidOfPrey(float x, float y) {
      super(x,y);
      predator = true;
      
      maxforce = 0.10;
      maxspeed = 3;
      boidFill = red;
      boidStroke = red;
      cohMult = 3.0;
      sepMult = 0.5;
      aliMult = 2.0;
      desiredseparation = 5.0f;
  }

  void updateColor() {
    if (tooClose) {
      boidFill = transparent;
      boidStroke = white;
      //TODO: i could make it bigger here but its likely to grow real fast
    } else {
      boidFill = red;
      boidStroke = red;
    }
  }
}

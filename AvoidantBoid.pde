// The AvoidantBoid class

class AvoidantBoid extends Boid {
  AvoidantBoid(float x, float y) {
      super(x,y);
      maxforce = 0.10;
      maxspeed = 3;
      boidFill = green;
      boidStroke = green;
      cohMult = 1.0;
      sepMult = 5.0;
      aliMult = 1.0;
      desiredseparation = 40.0f;
  }

  void updateColor() {
    if (tooClose) {
      boidFill = transparent;
      boidStroke = white;
    } else {
      boidFill = blue;
      boidStroke = blue;
    }
  }
  
  // A vector pointing from the position away from the target
  PVector desiredPosition(PVector target) {
    return PVector.add(target, position);
  }
}

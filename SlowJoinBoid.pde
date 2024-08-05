// The SlowJoinBoid class

class SlowJoinBoid extends Boid {
  SlowJoinBoid(float x, float y) {
      super(x,y);
      maxforce = 0.10;
      maxspeed = 3;
      boidFill = green;
      boidStroke = green;
      cohMult = 1.0;
      sepMult = 3.0;
      aliMult = 1.0;
      desiredseparation = 25.0f;
  }

  void updateColor() {
    if (tooClose) {
      boidFill = transparent;
      boidStroke = white;
    } else {
      boidFill = green;
      boidStroke = green;
    }
  }
}

class Line {
  // Member Variables
  float xpos, ypos, strokeW, pointCount;
  // Constructor
  Line(float tempX, float tempY) {
    xpos = tempX;
    ypos = tempY;
  }
  // Display Method
  void display() {
    strokeW = random(1, 5);
    pointCount = random(1, 70);
    stroke(random(255), random(255), random(255));
    strokeWeight(strokeW);

    int rand = int(random(4));
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
      background(random(0, 255));
    } else if (rand == 0) {
      moveLeft(xpos, ypos, pointCount);
    } else if (rand == 1) {
      moveRight(xpos, ypos, pointCount);
    } else if (rand == 2) {
      moveDown(xpos, ypos, pointCount);
    } else {
      moveUp(xpos, ypos, pointCount);
    }
  }
  // Movement Method
  void moveRight(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX+10;
      ypos = startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX-10;
      ypos = startY;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY-i);
      xpos = startX;
      ypos = startY-10;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos = startX;
      ypos = startY+10;
    }
  }
}

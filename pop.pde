public class Pop {
  // pop out class
  float xpos;
  float ypos;
  float rwid;
  float rhei;
  
  Pop(float xpos, float ypos, float rwid, float rhei){
    this.xpos = xpos;
    this.ypos = ypos;
    this.rwid = rwid;
    this.rhei = rhei;
  }
  
  void render() {
    fill(secondary); 
    rect(xpos, ypos, rwid, rhei);
    textAlign(CENTER);
    fill(255);
    text("Options", xpos+50, ypos+50);
  }

  void setCoords(float x, float y) {
        this.xpos = x;
        this.ypos = y;
  }
}

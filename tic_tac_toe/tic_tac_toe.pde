void setup() {
  size(500, 500);
  initBoard();
  computerMove();
}

void draw() {
  background(255);
  drawBoard();
}

void keyPressed() {
  handleKeyPress(key);
}

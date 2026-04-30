void drawGrid() {
  stroke(0);
  strokeWeight(4);

  //Vertical lines
  line(CELL_SIZE, 0, CELL_SIZE, CANVAS_SIZE);
  line(CELL_SIZE * 2, 0, CELL_SIZE * 2, CANVAS_SIZE);

  //Horizontal lines
  line(0, CELL_SIZE, CANVAS_SIZE, CELL_SIZE);
  line(0, CELL_SIZE * 2, CANVAS_SIZE, CELL_SIZE * 2);
}

void drawX(float x, float y) {
  stroke(0);
  strokeWeight(6);
  float pad = 20;
  line(x + pad, y + pad, x + CELL_SIZE - pad, y + CELL_SIZE - pad);
  line(x + CELL_SIZE - pad, y + pad, x + pad, y + CELL_SIZE - pad);
}

void drawO(float x, float y) {
  stroke(0);
  strokeWeight(6);
  noFill();
  ellipse(x + CELL_SIZE/2, y + CELL_SIZE/2, CELL_SIZE - 40, CELL_SIZE - 40);
}

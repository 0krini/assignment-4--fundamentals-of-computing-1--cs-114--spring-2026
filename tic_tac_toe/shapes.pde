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

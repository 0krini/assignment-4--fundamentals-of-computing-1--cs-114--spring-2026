int[] board = new int[9];
boolean gameOver = false;

void initBoard() {
  for (int i = 0; i < 9; i++) board[i] = EMPTY;
}

void drawBoard() {
  drawGrid();

  for (int i = 0; i < 9; i++) {
    float x = (i % 3) * CELL_SIZE;
    float y = (i / 3) * CELL_SIZE;

    if (board[i] == USER) {
      drawO(x, y);
    } else if (board[i] == COMPUTER) {
      drawX(x, y);
    }
  }
}

void handleKeyPress(char k) {
  if (gameOver) {
    println("The game has ended.");
    return;
  }

  if (k < '0' || k > '8') {
    println("Incorrect key pressed.");
    return;
  }

  int pos = k - '0';

  if (board[pos] != EMPTY) {
    println("Square already taken.");
    return;
  }

  //User move
  board[pos] = USER;

  if (checkWin(USER)) {
    println("User wins!");
    gameOver = true;
    return;
  }

  if (isBoardFull()) {
    println("No one has won.");
    gameOver = true;
    return;
  }

  println("Game still in play.");

  //Computer move
  computerMove();

  if (checkWin(COMPUTER)) {
    println("Computer wins!");
    gameOver = true;
    return;
  }

  if (isBoardFull()) {
    println("No one has won.");
    gameOver = true;
  }
}

void computerMove() {
  for (int i = 0; i < 9; i++) {
    if (board[i] == EMPTY) {
      board[i] = COMPUTER;
      println("Computer played square " + i);
      return;
    }
  }
}

boolean checkWin(int player) {
  int[][] wins = {
    {0,1,2}, {3,4,5}, {6,7,8},
    {0,3,6}, {1,4,7}, {2,5,8},
    {0,4,8}, {2,4,6}
  };

  for (int[] w : wins) {
    if (board[w[0]] == player &&
        board[w[1]] == player &&
        board[w[2]] == player) {
      return true;
    }
  }
  return false;
}

boolean isBoardFull() {
  for (int i = 0; i < 9; i++) {
    if (board[i] == EMPTY) return false;
  }
  return true;
}

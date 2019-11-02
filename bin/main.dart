// Challenge 1
// Write test cases for the challenges including boundary conditions

// Challenge 2
// Minesweeper Number of Neighbouring Mines
// Create a function that takes an array representation of a Minesweeper board,
// and returns another board where the value of each cell is the amount of its neighbouring mines.
// Examples
//  The input may look like this:
//
//  [
//    [0, 1, 0, 0],
//    [0, 0, 1, 0],
//    [0, 1, 0, 1],
//    [1, 1, 0, 0],
//  ]
//  The 0 represents an empty space . The 1 represents a mine.
//
//  You will have to replace each mine with a 9 and each empty space with the
//  number of adjacent mines, the output will look like this:
//
//  [
//    [1, 9, 2, 1],
//    [2, 3, 9, 2],
//    [3, 9, 4, 9],
//    [9, 9, 3, 1],
//  ]

import 'dart:convert';


List mineSweeper(List<List>board){
  List sameBoard = json.decode(json.encode(board));
  for(int i = 0;i<board.length;i++){
    for(int j = 0;j<board[i].length;j++){
      if(board[i][j] == 0){
        int count = 0;
        for (int x = -1; x < 2; x++){
          for (int y = -1; y < 2; y++){
            int checkX = i + x;
            int checkY = j + y;
            if ((checkX >= 0 && checkX < board.length) && (checkY >= 0 && checkY < board[i].length)){
              if (board[checkX][checkY] == 1){
                count++;
              }
            }
          }
        }
        sameBoard[i][j] = count;
      }
      else if(board[i][j] == 1){
        sameBoard[i][j] = 9;
      }

    }
  }
  return sameBoard;



//
//  int mineDetector(List<List> board, int x, int y) {
//    int min(int a,int b){
//      return a <= b ? a : b;
//    }
//
//    int max(int a,int b){
//      return a >= b ? a : b;
//    }
//
//    int validMinX = min(x-1,0);
//    int validMaxX = max(x + 1, board[x].length - 1);
//    int validMinY = min(y-1,0);
//    int validMaxY = max(y + 1, board[y].length - 1);
//    if(board[x][y] == 1){
//      return 9;
//    }
//    else{
//      print(board);
//      int count = 0;
//      for(int i = validMinX;i< validMaxX;i++){
//        for(int j = validMinY;j<validMaxY;j++){
//          if(board[i][j] == 1){
//            count = count + 1;
//          }
//        }
//      }
//      return count;
//    }
//  }
//  checkSurroundings(int row,int col){
//    int topLeft = finalBoard[row - 1][col - 1];
//    int top = finalBoard[row][col - 1];
//    int topRight = finalBoard[row + 1][col - 1];
//    int midLeft = finalBoard[ row - 1 ][col];
//    int midRight = finalBoard[ row + 1 ][col];
//    int botLeft = finalBoard[ row - 1 ][col + 1];
//    int bot = finalBoard[row][col + 1];
//    int botRight = finalBoard[row + 1][col + 1];
}


// Challenge 3
// Group in Order
// Create a function that groups an array of numbers based on a size parameter. The size represents the maximum length of each sub-array.
//
//  [1, 2, 3, 4, 5, 6], 3
//  [[1, 3, 5], [2, 4, 6]]
/// Divide array into groups of size 3.
//
//  [1, 2, 3, 4, 5, 6], 2
//  [[1, 4], [2, 5], [3, 6]]
/// Divide array into groups of size 2.
//
//  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 4
//  [[1, 4, 7, 10], [2, 5, 8, 11], [3, 6, 9]]
/// "Leftover" arrays are okay.

List<List> specialSubLists(List mainList, int size){
  List<List> outputList = List<List>();
    for(int i = 0; i< mainList.length; i = i + size){
      if(i+size > mainList.length){
        outputList.add(mainList.sublist(i,mainList.length));
      }
      else{
        outputList.add(mainList.sublist(i,i+size));
      }
    }
  return outputList;
}

main() {
  print(mineSweeper([[0, 1, 0, 0],
[0, 0, 1, 0],
[0, 1, 0, 1],
[1, 1, 0, 0],
]));
  print(specialSubLists([1, 2, 3, 4, 5, 6, 7], 2));

}

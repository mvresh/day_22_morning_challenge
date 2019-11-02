import "package:test/test.dart";
import 'main.dart';

void main() {
  test("challenge 2 a", () {
    expect(mineSweeper([[0, 1, 0, 0],[0, 0, 1, 0],[0, 1, 0, 1],[1, 1, 0, 0],]), equals([[1, 9, 2, 1],[2, 3, 9, 2],[3, 9, 4, 9],[9, 9, 3, 1],]));
  });

  test("challenge 3 a", () {
    expect(specialSubLists([1, 2, 3, 4, 5, 6], 3), equals([[1, 2, 3], [4, 5, 6]]));
  });

  test("challenge 3 b", () {
    expect(specialSubLists([1, 2, 3, 4, 5, 6], 2), equals([[1, 2], [3, 4], [5, 6]]));
  });


}
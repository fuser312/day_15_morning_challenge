import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("Test Case 1",(){
    expect(posNegSort([6, 3, -2, 5, -8, 2, -2]), [2, 3, -2, 5, -8, 6, -2]);
  });

  test("Test Case 2",(){
    expect((karacaEncryption("apple")), ("1lpp0aca"));
  });
}


// Challenge 1
// Write failing test cases for next two challenges

// Challenge 2
// Write a function that sorts the positive numbers in ascending order,
// and keeps the negative numbers untouched.
// Example: posNegSort([6, 3, -2, 5, -8, 2, -2]) ➞ [2, 3, -2, 5, -8, 6, -2]

List posNegSort(List list){
  List posNumberList = [];
  List indexList = [];
  for(int i = 0; i < list.length; i++){
    if(list[i] > 0){
      posNumberList.add(list[i]);
      indexList.add(i);
    }
  }
  posNumberList.sort();
  for(int i = 0; i < list.length; i++){

    if(i < indexList.length) {
      list[indexList[i]] = posNumberList[i];
    }
  }
  return list;
}
// Challenge 3
// The Karaca's Encryption Algorithm
// Make a function that encrypts a given input with these steps:
// Input: "apple"
// Step 1: Reverse the input: "elppa"
//
//  Step 2: Replace all vowels using the following chart:
// a => 0
// e => 1
// o => 2
// u => 3
// "1lpp0"
// Step 3: Add "aca" to the end of the word: "1lpp0aca"
// Output: "1lpp0aca"

String karacaEncryption(String string){
  List newString = string.split("");
  List reversedString = newString.reversed.toList();
  List newList = [];
  for (int i = 0; i< reversedString.length; i++){
    if (reversedString[i] == "a"){
      newList.add("0");
    }
    else if(reversedString[i] == "e"){
      newList.add("1");
    }
    else if(reversedString[i] == "o"){
      newList.add("2");
    }
    else if(reversedString[i] == "u"){
      newList.add("3");
    }
    else if(reversedString[i] == "i"){
      newList.add("4");
    }
    else{
      newList.add(reversedString[i]);
    }

  }

  String finalWord = (newList.join());
  return finalWord + "aca";
}

main() {

  print(posNegSort([6, 3, -2, 5, -8, 2, -2]));
  print(karacaEncryption("apple"));
}

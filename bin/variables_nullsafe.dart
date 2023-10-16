void main(){
  testVariables();
  testNullSafety();
}

void testVariables(){

  // Base Variable Types
  int a = 7;
  double d = 2.4;
  bool isTrue = true;
  print((a + d) is int);
  print((a + d).runtimeType);

  // String Type
  String str = 'hello!';
  print('This is a string: $str and its hascode: ${str.hashCode}');

  // Dynamic Type
  var guessMyType; 
  print("runtimeType of a var without value: ${guessMyType.runtimeType}");  // Prints "Null"

  var guessMyTypeAgain = 'str'; // Type inference
  print("runtimeType of a var assigned with a String: ${guessMyTypeAgain.runtimeType}"); // Prints "String"

  // final keyword
  final String immutableString = '坚如磐石';
  final String immutableString_2 = '不动如山，$immutableString';
  print("A final string contanenated from anther final string $immutableString_2");

  // const keyword: RUNTIME constant
  const int compileTimeConstant = 2;
  // ==== wrong example ====
  // const int anotherCTC = a + 1;
  // print('A const string contanenated from another const string $anotherCTC'); // error
}

void testNullSafety() {

  // Null Variables
  // int nullInt0 = null; // error
  int? nullInt = null;
  print("Null Int: ${nullInt.runtimeType}"); // Prints "Null"

  nullInt = 1;
  print("Null Int assigned with a value: ${nullInt.runtimeType}"); // Prints "int"

  // Assertion
  int? nullInt2 = null;
  //int asserted = nullInt2!; // This will go wrong in runtime, but executable

  // Checking
  print("If nullInt2 is null then print 114514: ${nullInt2 ?? 114514}");

  // Late Keyword - Check out the class below
  Universe universe = Universe();
  universe.spawn();
}

class Universe{
    late final int _age; //_age is not null-able, need to use late keyword
    spawn(){
      _age = 0;
      print("The universe has spawned with a age of: $_age");
    } 
}
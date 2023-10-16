//Storing-Variables
void main(){

  int a = 7;
  double d = 2.4;
  bool isTrue = true;

  print((a + d) is int);
  print((a + d).runtimeType);

  String str = 'hello!';

  print('This is a string: $str and its hascode: ${str.hashCode}');

  var guessMyType; //dynamic type, prints "Null"

  print(guessMyType.runtimeType);

  var guessMyTypeAgain = 'str'; // Type inference

  final String immutableString = '坚如磐石';
  // try{
  //   immutableString = '1';
  // }catch(exception){
  //   print("Wrong");
  // }
  // // Not run-time exception

  final String anotherImmutableString = '不动如山，$immutableString';

  print("A final string contanenated from anther final string $anotherImmutableString");

  const int compileTimeConstant = 2;
  // const int anotherCTC = a + 1;
  // print('A const string contanenated from another const string $anotherCTC');

}
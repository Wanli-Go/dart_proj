void main(){
  const val = 8;
  mixedParamsFunction(int a, int b, {required int x, int y = 5}){
    return a + b * x / y - val;
  }

  print(mixedParamsFunction(5, 3, x: 2, y: 1));

  String minusFive(int number) => '$number minus five equals ${number - 5}';
  
  print114514Result(Function func){
    print(func(114514));
  }

  print114514Result(minusFive);
}
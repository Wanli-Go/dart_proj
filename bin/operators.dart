
class Objecto {
  String code = "CODE";
}

class Obbi extends Objecto{
  late String name;
  late int decency;
}

void main(){

  // Basic Math
  1 - 2 + 3 * 5 / 4;

  // Logical
  var a = 1 == 2;
  var b = 1 >= 3;
  1 <=-1;
  if (a || b){
    print("Good!");
  } else print("Bad!");

  // Increment
  int id = 0;
  id += 1;
  id--;
  print("ID: $id");

  // Optional Assignment
  int? optionalInt = null;
  optionalInt ??= 1;
  print(optionalInt.runtimeType);

  // Ternary
  print(optionalInt == null ? 1 : null);

  //..(change values on initialization)
  Objecto objecto = Obbi()   // DO NOT use "; after creating this object
    ..code = "123"
    ..decency = 3
    ..name = "myname";

  print(objecto.code);
    

  // Type cast
  Obbi s = objecto as Obbi;
  print(s.runtimeType);
}
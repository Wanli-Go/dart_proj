void main(){
  testClasses();
  testOperators();
}

class Animal {
  String code = "ACTIVE FORM OF LIFE ON EARTH";

  void eat(){
    print("Animal is eating!");
  }
}

mixin Sins{
  List<String> sevenDeadlySins = ["wrath", "greed", "sloth", "pride", "lust", "envy", "gluttony"];

  void listSins(){
    int index = 1;
    for(var sin in sevenDeadlySins){
      print("sin $index: $sin");
      index++;
    }
  }
}

class Human extends Animal with Sins{
  late String name;
  late bool genderClassificationMethod; // True = Binary, False = Non-binary

  Human(this.name, this.genderClassificationMethod); // Unnamed Constructor
  Human.constructWithCode(this.name, this.genderClassificationMethod, {required String code}){ // Constructor with a name, ***different from Java***
    this.code = code;
  }

  @override
  void eat(){ // Polymorphism
    print("Human $name is having meals!");
  }

  String think(){
    String result = "A human is thinking!";
    return result;
  }
}

void testClasses() {
  Human humanCherry = Human.constructWithCode("Cherry", true, code: "I'M SUPERHUMAN!");
  print("Human Cherry's gender classification method: ${
    humanCherry.genderClassificationMethod ? "Binary": "Non-Binary"
    }"); // Refer to Ternary Operator below
  print("That human's name: ${humanCherry.name}");  
  humanCherry.listSins();
}

void testOperators() {
  
  // Basic Math & Logical Operators
  1 - 2 + 3 * 5 / 4;
  var a = 1 == 2;
  var b = 1 >= 3;
  1 <=-1;
  if (a || b){
    print("She's Good!");
  } else print("He's Bad!"); // Alternative writing if there's a single line

  int id = 0;
  id += 1; // Equal to id++
  id --;
  print("ID: $id");

  // Optional Variable Assignment
  int? optionalInt; // = null
  optionalInt ??= 114514; // If optionalInt is null, assign the value 114514, else remain original
  print("mytype: ${optionalInt.runtimeType}"); // Prints "int"

  // Ternary
  dynamic guessMe;
  print(guessMe == null ? 1 : null);

  Animal humanAnimal = Human("bing", true)
    ..code = "I'm an Animal, but I'm also human!"; // to use this, DO NOT add ";"" after constructor

  // Type cast
  humanAnimal.eat();
  // humanAnimal.think(); // error
  Human trans = humanAnimal as Human;
  print(trans.runtimeType);
  trans.think();
}
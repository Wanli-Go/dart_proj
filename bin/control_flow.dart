// Conditional Statements, Loops, Assertions
// Near Identical to Javascript
var color = 'blue';

void main(List<String> arguments){
  testColor();
  forLoop();
  assert(color == 'red'); // Raises Error
}

void testColor() {
  if (color == null) print("The color is null!");
  else if (color == "red") print("The color is red.");
  else if(color.isEmpty) print("We have an empty color.");
  else{
    int length = color.length;
    print("The color is: $color, and the length is: $length");
  }
}


void forLoop() {
  for(int i=0; i<5; i++){
    if(i == 1)continue;
    print("The i value is $i");
    if(i == 3)break;
    while(i > 2){ // This while loop never executes
      i = i - 1;
    }
  }
}
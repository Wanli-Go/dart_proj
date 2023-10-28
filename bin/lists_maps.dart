void main(){
  testList();
  testMap();
}

void testList() {
  '''
  A list is like a ARRAY, or ARRAYLIST, or LINKEDLIST or any sequential list. 
  In Dart, any form of sequential list is abstracted into the List<T> class.
  ''';
  List<String> myList = ["WTF", "Holy Shitty"];
  List<int> fixedList = List.filled(40, 50);
  
  // contanenate two lists
  List<Object> objectList = [...myList, ...fixedList]; 

  // get the first/last member
  var lastMember = objectList.last;
  var firstMember = objectList.first;
  print("Last Member is: $lastMember and its type: ${lastMember.runtimeType}");
  print("First Member is: $firstMember and its type: ${firstMember.runtimeType}");

  // add an element to a list
  // fixedList.add(51); // error
  var sameList = [...fixedList];
  sameList.add(51);

  // delete an element to a list
  sameList.removeAt(0); // according to index
  sameList.removeWhere((element) => element==50);

  // Iterate through a list using forEach or map method
  for (var element in myList) {print(element);}
  myList.forEach((element) {print(element);}); // Same as above

  List<int> doubled = sameList.map((e) => e * 2).toList();
  print(doubled);
}

void testMap() {
  Map<String, Object> starWars = {
    'title': "Star Wars",
    'length': 6,
  };

  starWars.forEach((key, value) {print("$key = $value");});

}


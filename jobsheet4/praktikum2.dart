void main() {
  // LANGKAH-1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  //LANGKAH-3
  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  //PERBAIKAN LANGKAH-3
  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add('Anaradi Octa Lavechia'); 
  names1.add('2241760007');

  names2.addAll({'Anaradi Octa Lavechia', '2241760007'}); 

  print(names1); 
  print(names2);
}

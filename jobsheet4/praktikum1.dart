void main(){
  // LANGKAH-1
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  //LANGKAH-2
  final List<dynamic> list = List.filled(5, null);  
  list[1] = 'Anaradi Octa Lavechia';
  list[2] = '2241760007';  

  print(list);

}
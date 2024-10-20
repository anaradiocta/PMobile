void main(){
  //LANGKAH-1
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  //LANGKAH-3
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);

  var nim = [22, 41, 76, 00, 07];
  var combinedList = [...list2, ...nim];
  print("NIM: $combinedList");
  print("Panjang List: ${combinedList.length}");

  //LANGKAH-4
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);
  bool promoActive = true;

  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  promoActive = false;
  nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  //LANGKAH-5
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print(nav2);
  String login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);
  
  // Uji dengan login yang berbeda
  login = 'Employee';
  nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);

  //LANGKAH-6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
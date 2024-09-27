void main(){
  //LANGKAH-1
  // var gifts = {
  //   // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 2,
  // };

  // print(gifts);
  // print(nobleGases);

  //LANGKAH-3
  // var mhs1 = Map<String, String>();
  // gifts['first'] = 'partridge';
  // gifts['second'] = 'turtledoves';
  // gifts['fifth'] = 'golden rings';

  // var mhs2 = Map<int, String>();
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon';

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Anaradi Octa Lavechia',  
    'nim': '2241760007'    
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    20: 'Anaradi Octa Lavechia',  
    30: '2241760007'   
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  mhs1['nama'] = 'Anaradi Octa Lavechia';  
  mhs1['nim'] = '2241760007';   

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  mhs2[100] = 'Anaradi Octa Lavechia';  
  mhs2[200] = '2241760007';  
}
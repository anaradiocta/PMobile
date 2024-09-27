// LANGKAH-3
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
void main(){
  // LANGKAH-1
  // var record = ('first', a: 2, b: true, 'last');
  // print(record)

  // LANGKAH-3
  var record = (1, 3);
  print("Sebelum ditukar: $record");

  var hasilTukar = tukar(record);
  print("Setelah ditukar: $hasilTukar");

  // LANGKAH-4
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa;
  // print(mahasiswa);
  (String, int) mahasiswa = ('Anaradi Octa Lavechia', 2241760007);
  print("Record Mahasiswa: $mahasiswa");

  // LANGKAH-5
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}


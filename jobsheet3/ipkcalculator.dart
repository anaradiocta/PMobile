import 'dart:io';

void main() {
  int jmlsmt, jmlmk;
  List<List<String>> matkul = [];
  List<List<int>> sks = [];
  List<List<String>> nilaihuruf = [];
  List<int> skssmt = [];
  List<double> nr = [];
  double totalnr = 0;
  int totalsks = 0;

  print("==============================================");
  print("\tProgram Menghitung IPK Mahasiswa");
  print("==============================================");

  stdout.write("Masukkan jumlah semester: ");
  jmlsmt = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (jmlsmt < 2 || jmlsmt > 14) {
    print("Jumlah semester salah! Harus antara 2 hingga 14.");
    return;
  }

  for (int i = 0; i < jmlsmt; i++) {
    int jumlahnilai = 0;
    int jumlahsks = 0;
    List<String> mkPerSemester = [];
    List<int> sksPerSemester = [];
    List<String> nilaiHurufPerSemester = [];

    stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
    jmlmk = int.tryParse(stdin.readLineSync()!) ?? 0;

    for (int j = 0; j < jmlmk; j++) {
      stdout.write("Masukkan mata kuliah ke-${j + 1}\n");
      stdout.write("Masukkan nama matkul: ");
      String mk = stdin.readLineSync()!;
      mkPerSemester.add(mk);

      stdout.write("Masukkan jumlah sks matkul: ");
      int jumlahSks = int.tryParse(stdin.readLineSync()!) ?? 0;
      sksPerSemester.add(jumlahSks);

      stdout.write("Masukkan nilai matkul (A, B, C, D, E): ");
      String nilaiHuruf = stdin.readLineSync()!;
      nilaiHurufPerSemester.add(nilaiHuruf);

      int nilai = 0;
      switch (nilaiHuruf) {
        case 'A':
          nilai = 4 * jumlahSks;
          break;
        case 'B':
          nilai = 3 * jumlahSks;
          break;
        case 'C':
          nilai = 2 * jumlahSks;
          break;
        case 'D':
          nilai = 1 * jumlahSks;
          break;
        case 'E':
          nilai = 0 * jumlahSks;
          break;
        default:
          print("Input salah! Nilai harus berupa A, B, C, D, atau E.");
          return;
      }

      jumlahnilai += nilai;
      jumlahsks += jumlahSks;
    }

    skssmt.add(jumlahsks);
    nr.add(jumlahsks > 0 ? jumlahnilai / jumlahsks.toDouble() : 0.0);

    matkul.add(mkPerSemester);
    sks.add(sksPerSemester);
    nilaihuruf.add(nilaiHurufPerSemester);

    print("--------------------------------------------");
  }

  print("==============================================");
  print("\t\tTranskrip Nilai");
  print("==============================================");

  for (int i = 0; i < jmlsmt; i++) {
    print("\nHasil Semester ${i + 1}:");
    print("${"Mata Kuliah".padRight(30)}${"SKS".padRight(10)}${"Nilai"}");

    for (int j = 0; j < matkul[i].length; j++) {
      print("${matkul[i][j].padRight(30)}${sks[i][j].toString().padRight(10)}${nilaihuruf[i][j]}");
    }

    print("\nSKS     : ${skssmt[i]}");
    print("NR      : ${nr[i].toStringAsFixed(2)}");

    totalsks += skssmt[i];
    totalnr += nr[i] * skssmt[i];
    print("--------------------------------------------");
  }

  double ipk = totalsks > 0 ? totalnr / totalsks.toDouble() : 0.0;
  print("\nTotal SKS       : $totalsks");
  print("IPK             : ${ipk.toStringAsFixed(2)}");
  print("==============================================");
}

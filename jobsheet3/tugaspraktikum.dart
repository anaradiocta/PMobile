void main() {
  String NIM = "2241760007";

  print("Bilangan prima dari 0 sampai 201:");

  for (int i = 2; i <= 201; i++) {
    bool isPrime = true;

    for (int j = 2; j <= i / 2; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print("$i");
      print("Ditemukan oleh: $NIM");
    }
  }
}
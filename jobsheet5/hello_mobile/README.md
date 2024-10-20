#                   LAPORAN PRAKTIKUM
#     Jobsheet - 5 : Aplikasi Pertama dan Widget Dasar Flutter
#               TUGAS PEMROGRAMAN MOBILE
        Dibimbing oleh: Bapak Ade Ismail, S.Kom., M.TI
<img src="logo.jpg">

                        Disusun oleh: 

                    Nama: Anaradi Octa Lavechia
                    NIM : 2241760007
                    KELAS : SIB - 3D
                    JURUSAN TEKNOLOGI INFORMASI
                    PRODI D-IV SISTEM INFORMASI BISNIS
                    POLITEKNIK NEGERI MALANG
                                2023

# Praktikum 1 : Membuat Project Flutter Baru
Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda.

## Langkah 1:
Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.
<img src="langka1.jpg">

## Langkah 2:
Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.
<img src="langka2.jpg">

## Langkah 3:
Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.
<img src="langka3.jpg">

## Langkah 4:
Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.
<img src="langka4.jpg">


# Praktikum 2 : Menghubungkan Perangkat Android atau Emulator
Melanjutkan dari praktikum 1, Anda diminta untuk menjalankan aplikasi ke perangkat fisik (device Android atau iOS). Silakan ikuti langkah-langkah pada codelab tautan berikut ini.

https://developer.android.com/codelabs/basic-android-kotlin-compose-connect-device?hl=id#0

<img src="prak2.jpg" style="width:300px;">

<img src="prak2hasil.jpg" style="width:300px;">

# Praktikum 3 : Membuat Repository GitHub dan Laporan Praktikum

Melanjutkan dari praktikum 2, silakan selesaikan langkah-langkah berikut ini.

## Langkah 1:
Login ke akun GitHub Anda, lalu buat repository baru dengan nama "flutter-fundamental-part1"

<img src="prak3.jpg">

## Langkah 2:
Lalu klik tombol "Create repository" lalu akan tampil seperti gambar berikut.

<img src="prak33.jpg">

## Langkah 3:
Kembali ke VS code, project flutter hello_world, buka terminal pada menu Terminal > New Terminal. Lalu ketik perintah berikut untuk inisialisasi git pada project Anda.

<img src="prak333.jpg">

## Langkah 4:
Pilih menu Source Control di bagian kiri, lalu lakukan stages (+) pada file .gitignore untuk mengunggah file pertama ke repository GitHub.

<img src="prak33333.jpg">

## Langkah 5:
Beri pesan commit "tambah gitignore" lalu klik Commit (✔)

<img src="prak3333.jpg">

## Langkah 6:

Lakukan push dengan klik bagian menu titik tiga > Push

<img src="prak333333.jpg">

## Langkah 7:

Di pojok kanan bawah akan tampil seperti gambar berikut. Klik "Add Remote"

<img src="prak3333333.jpg">

## Langkah 8:

Salin tautan repository Anda dari browser ke bagian ini, lalu klik Add remote

<img src="prak3333333333.jpg">

Setelah berhasil, tulis remote name dengan "origin"

<img src="prak333333333.jpg">

## Langkah 9:
Lakukan hal yang sama pada file README.md mulai dari Langkah 4. Setelah berhasil melakukan push, masukkan username GitHub Anda dan password berupa token yang telah dibuat (pengganti password konvensional ketika Anda login di browser GitHub). Reload halaman repository GitHub Anda, maka akan tampil hasil push kedua file tersebut seperti gambar berikut.

<img src="prak33333333333.jpg">


## Langkah 10:
Lakukan push juga untuk semua file lainnya dengan pilih Stage All Changes. Beri pesan commit "project hello_world". Maka akan tampil di repository GitHub Anda seperti berikut.

<img src="prak3333333333333.jpg">

## Langkah 11:
Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project hello_world dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.

<img src="prak33333333333333.jpg">

## Langkah 12:
Silakan screenshot seperti pada Langkah 11, namun teks yang ditampilkan dalam aplikasi berupa nama lengkap Anda. Simpan file screenshot dengan nama 01.png pada folder images (buat folder baru jika belum ada) di project hello_world Anda. Lalu ubah isi README.md seperti berikut, sehingga tampil hasil screenshot pada file README.md. Kemudian push ke repository Anda.

# hello_world

A new Flutter project

![alt text](image.png)


# Praktikum 4 : Menerapkan Widget Dasar

Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

## Langkah 1: Text Widget
Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.

<img src="images/prak4.JPG">

Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.

<img src="images/prak44.JPG">

<img src="prak444444.JPG">

## Langkah 2:

Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.

<img src="images/prak444.JPG">

Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.

<img src="prak4444.JPG">

Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.

<img src="prak444.JPG">

<img src="prak44444.JPG">

# Praktikum 5 : Menerapkan Widget Material Design dan iOS Cupertino

Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan project hello_world Anda. Lakukan langkah yang sama seperti pada Praktikum 3, yaitu setiap widget dibuat file sendiri lalu import ke main.dart dan screenshot hasilnya.

## Langkah 1: Cupertino Button dan Loading Bar

Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

<img src="prak5.JPG">

## Langkah 2: Floating Action Button (FAB)
Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.

Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

<img src="prak55.JPG">

## Langkah 3: Scaffold Widget
Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

- Scaffold_widget

<img src="prak555555555.JPG">

Ubah isi kode main.dart seperti berikut.

<img src="prak555.JPG">

## Langkah 4: Dialog Widget
Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog.

<img src="prak5555555.JPG">

Ubah isi kode main.dart seperti berikut.

<img src="prak5555.JPG">

## Langkah 5: Input dan Selection Widget
Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.

Contoh penggunaan TextField widget adalah sebagai berikut:

<img src="prak55555.JPG">

- input_widget

<img src="prak55555555.JPG">

## Langkah 6: Date and Time Pickers
Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.

<img src="prak555555.JPG">

<img src="prak5555555555.JPG">

- Berikut tampilan output yang dihasilkan

<img src="prak5o.JPG">

<img src="prak5oo.JPG">


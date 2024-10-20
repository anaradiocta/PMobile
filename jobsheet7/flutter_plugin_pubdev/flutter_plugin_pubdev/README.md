#                   LAPORAN PRAKTIKUM
#           Jobsheet - 7 : Manajemen Plugin
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

# Praktikum Menerapkan Plugin di Project Flutter
Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda.

## Langkah 1 : Buat Project Baru
Buatlah sebuah project flutter baru dengan nama flutter_plugin_pubdev. Lalu jadikan repository di GitHub Anda dengan nama flutter_plugin_pubdev.

## Langkah 2: Menambahkan Plugin
Tambahkan plugin auto_size_text menggunakan perintah berikut di terminal

<img src="langka2.JPG">

Jika berhasil, maka akan tampil nama plugin beserta versinya di file pubspec.yaml pada bagian dependencies.

## Langkah 3: Buat file red_text_widget.dart
Buat file baru bernama red_text_widget.dart di dalam folder lib lalu isi kode seperti berikut.

<img src="langka3.JPG">

## Langkah 4: Tambah Widget AutoSizeText
Masih di file red_text_widget.dart, untuk menggunakan plugin auto_size_text, ubahlah kode return Container() menjadi seperti berikut.

<img src="langka4.JPG">


Setelah Anda menambahkan kode di atas, Anda akan mendapatkan info error. Mengapa demikian? Jelaskan dalam laporan praktikum Anda!

## Langkah 5: Buat Variabel text dan parameter di constructor
Tambahkan variabel text dan parameter di constructor seperti berikut.

<img src="langkah5.JPG">

## Langkah 6: Tambahkan widget di main.dart
Buka file main.dart lalu tambahkan di dalam children: pada class _MyHomePageState

<img src="langkah6.JPG">

<img src="langkah66.JPG">

Run aplikasi tersebut dengan tekan F5, maka hasilnya akan seperti berikut.

<img src="langkah7.JPG">

<img src="langka7.JPG">

<img src="langka77.JPG">

# LAPORAN PRAKTIKUM

1. Selesaikan Praktikum tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot hasil pekerjaan beserta penjelasannya di file README.md!

2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!

Berdasarkan pemahaman saya dari praktikum di atas, langkah 2 tersebut tujuannya adalah menambahkan plugin auto_size_text ke dalam project Flutter yang telah dibuat sebelumnya. Plugin auto_size_text digunakan untuk menampilkan teks yang ukurannya dapat disesuaikan secara otomatis agar sesuai dengan ruang yang tersedia, sehingga teks tidak akan keluar dari batas komponen atau tampilan.

3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!

Berdasarkan pemahaman saya dari praktikum di atas, langkah 5 tersebut tujuannya adalah menambahkan variabel text dan menetapkannya sebagai parameter wajib di constructor. Ini penting agar widget dapat menerima teks yang akan ditampilkan, dan menyelesaikan error pada Langkah 4.

4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!

Berdasarkan pemahaman saya, terdapat dua widget yang ditambahkan yaitu RedTextWidget dan AutoSizeText. Dimana kedua widget ini ebih fleksibel karena bisa menyesuaikan ukuran teks, sementara Text adalah widget teks dasar yang tidak menyesuaikan ukuran secara otomatis.

5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !



Berdasarkan dokumentasi plugin auto_size_text, berikut adalah penjelasan singkat dan jelas untuk setiap parameter yang umum digunakan:

- text

Teks yang akan ditampilkan dalam widget. Ini adalah parameter utama yang menentukan isi teks yang akan di-resize.

- style

Menentukan gaya teks, seperti warna, ukuran font, dan jenis font. Pada contoh di atas, digunakan TextStyle dengan warna merah dan ukuran font 14.

- maxLines

Jumlah maksimum baris yang diperbolehkan untuk menampilkan teks. Jika teks melebihi jumlah baris ini, ukuran font akan diperkecil hingga muat atau dipotong dengan ellipsis jika tidak bisa diperkecil lagi. Pada contoh, maxLines diatur menjadi 2.

- overflow:

Mengatur bagaimana teks yang berlebihan akan ditampilkan jika tidak muat dalam batas maxLines. Pilihan umum adalah TextOverflow.ellipsis, yang akan menambahkan tanda "..." di akhir teks jika teks terpotong.

- minFontSize dan  maxFontSize (opsional):

Menentukan ukuran font minimum yang dapat digunakan saat teks diperkecil atau ukuran font maksimum. Untuk minFontSize, jika ukuran font turun di bawah nilai ini, teks tidak akan lebih kecil lagi. Sedangkan, untuk maxFontSize jika teks bisa ditampilkan tanpa dipotong, ukuran font tidak akan melebihi nilai ini.
<<<<<<< HEAD

6. Kumpulkan laporan praktikum Anda berupa link repository GitHub kepada dosen!
=======
>>>>>>> ca4d1a94ac3d70f42babe331cdbc53b4209d29fd

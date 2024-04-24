// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Visible - Text',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[500],
      ),
      body: Center(
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          // maxLines: 2 // Untuk membatasi maksimum baris hasil dari teks yang dibuat

          // overflow: TextOverVlow.ellipsis // Untuk styling, bagaimana bentuk dari pembatasan maksimum baris teksnya, dan properti ini berkaitan dengan peroperti maxLines

          textAlign: TextAlign.center, // Untuk mengatur alignments dari teks

          style: TextStyle(
            backgroundColor: Colors.green[
                200], // Untuk memberikan background warna pada teksnya saja

            color: Colors.black, // Untuk memberikan warna pada teks

            fontSize: 24, // Untuk memberikan ukuran teks

            fontWeight: FontWeight.bold, // Untuk memberikan ketebalan pada teks

            letterSpacing: 0.5, // Untuk memberikan space per huruf nya

            fontFamily:
                'sans-serif', // Untuk Font Family, lebih baik menggunakan package dari Flutter-nya, yaitu Google Fonts. Karena tidak perlu mendownload font dan mendaftarkannya di pubspec.yaml satu per satu

            decoration: TextDecoration
                .underline, // Untuk memberikan dekorasi pada teks, sama seperti `text-decoration: value;` di css

            decorationStyle: TextDecorationStyle
                .wavy, // Untuk memberikan style pada dekorasinya. Seperti pada kasus ini, akan memberikan efek gelombang dari dekorasi garis bawah yang sudah kita buat sebelumnya

            decorationColor:
                Colors.blue, // Untuk memberikan warna pada dekorasinya

            decorationThickness:
                4, // Untuk memberikan ketebalan pada dekorasinya
          ), // Semua style tadi itu dibungkus dalam widget TextStyle
        ),
      ),
    );
  }
}

// Simpelnya, Text() itu sama seperti tag `p` di html, dan tag `Text` di react native
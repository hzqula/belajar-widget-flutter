// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class WidgetListView extends StatelessWidget {
  const WidgetListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Container> myList = [
      Container(
        width: 50,
        height: 200,
        color: Colors.green,
      ),
      Container(
        width: 50,
        height: 50,
        color: Colors.blue,
      ),
      Container(
        width: 50,
        height: 150,
        color: Colors.amber,
      ),
      Container(
        width: 50,
        height: 300,
        color: Colors.red,
      ),
    ];

    List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.amber];

    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Invisible - Column',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[500],
      ),
      body:
          // ListView(
          // Cara 1 dan 2, menggunakan keyword ini dan hapus komen sampai children
          // scrollDirection: Axis
          //     .horizontal, // Akan mengubah default dari Main Axis dan juga arah scroll dari kiri ke kanan. Maka tingginya akan memenuhi ukuran pembungkusnya jika tidak ada, maka akan memenuhi ukuran layar.

          // children:

          // Cara 1, hapus komen dari [ sampai ),
          //       [
          //     Container(
          //       // height: 500, // diperlukan jika tidak mengubah arah scroll-nya
          //       width:
          //           400, // diperlukan jika mengubah arah scroll-nya menjadi `scrollDirection: Axis.horizontal`.
          //       color: Colors.red,
          //     ),
          //     Container(
          //       // height: 500, // diperlukan jika tidak mengubah scrollDirection-nya
          //       width:
          //           400, // diperlukan jika mengubah arah scroll-nya menjadi `scrollDirection: Axis.horizontal`.
          //       color: Colors.green,
          //     ),
          //     Container(
          //       // height: 500, // diperlukan jika tidak mengubah scrollDirection-nya
          //       width:
          //           400, // diperlukan jika mengubah arah scroll-nya menjadi `scrollDirection: Axis.horizontal`.
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       // height: 500, // diperlukan jika tidak mengubah scrollDirection-nya
          //       width:
          //           400, // diperlukan jika mengubah arah scroll-nya menjadi `scrollDirection: Axis.horizontal`.
          //       color: Colors.yellow,
          //     ),
          //   ],
          // ),

          // Cara 2, hapus komen dari `myList` sampai ),
          //       myList,
          // ), // Akan mengambil data dari List<Container> myList yang kita inisialisasikan di awal, sehingga tidak perlu untuk menuliskan widgetnya satu-satu atau hardcode

          //     ListView.builder(
          //   // Cara 3 menggunakan keyword ini, hapus komen dari sini sampai baris kurung penutupnya ),

          //   itemCount: myColor.length, // Untuk menentukan jumlah list-nya

          //   itemBuilder: (context, index) {
          //     // Function() yang berisi 2 parameter `context` untuk mengetahui posisi sekarang, dan `index` untuk mengetahui index dari item yang sudah kita buat dan fungsi ini akan return sebuah widget
          //     return Container(
          //       height: 300,
          //       color: myColor[index],
          //     );
          //   },
          // ),

          // Cara 3, berbeda dengan kedua buah cara sebelumnya
          // Disini kita menggunakan ListView.builder() yang memerlukan 2 properti yaitu `itemCount: double` untuk menentukan jumlah list-nya dan `itemBuilder: function() yang berisi 2 parameter `context` untuk mengetahui posisi sekarang, dan `index` untuk mengetahui index dari item yang sudah kita buat dan fungsi ini akan return sebuah widget. Jika ingin menggunakan 2 cara yang ada di awal, komen dari ListView.builder( sampai kurung penutupnya ),. Dan hapus komen cara-cara sebelumnya

          ListView.separated(
              // Cara 4 akan menggunakan keywoord ini, hapus komen dari sini sampai baris kurung penutupnya, untuk menggunakan cara lain
              itemBuilder: (context, index) {
                return Container(
                  height: 300,
                  color: myColor[index],
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  height: 10,
                  color: Colors.black,
                );
              },
              itemCount: myColor.length),

      // Cara 4 ini sama seperti cara 3. Tetapi memiliki pembatas yaitu properti `separatorBuilder` yang memerlukan juga menerima 2 parameter yang sama seperti `itemBuilder` dan fungsi tersebut akan return sebuah widget
    );
  }
}

// ListView(), sama seperti `Column()` tapi jika menggunakan widget column ketika children-nya memenuhi layar atau lebih, maka akan terdapat warning pada layarnya dengan pesan overflow, atau kelebihan kapasitas, sehingga tidak disarankan untuk menggunakan widget column jika children-nya besar-besar ukurannya atau jumlahnya banyak.

// ListView() akan mengatasi permasalahan yang ada pada Column(), berbeda dengan widget column. ListView() memungkinkan kita untuk scroll layarnya, sehingga tidak akan terjadi warning overflow. Dan default Main Axis dan arah scroll dari widget listview adalah dari atas ke bawah. Tetapi lebarnya akan memenuhi pembungkusnya, jika tidak ada maka akan memenuhi layar, berbeda dengan widget column yang relative pada lebar children-nya.
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WidgetColumn extends StatelessWidget {
  const WidgetColumn({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment
            .center, // untuk memposisikan children-nya, apakah akan berada di tengah, awal, akhir, dan berjarak pada Main Axis-nya, yaitu dari atas ke bawah
        crossAxisAlignment: CrossAxisAlignment
            .center, // untuk memposisikan children-nya, apakah akan berada di tengah, awal, akhir pada Cross Axis-nya, yaitu dari kiri ke kanan. Akan lebih berpengaruh jika lebarnya ditentukan. Karena jika tidak, maka secara default lebar dari widget Column() akan relative terhadap lebar children-nya.
        children: [
          Container(
            width: 200,
            height: 50,
            color: Colors.green,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          Container(
            width: 150,
            height: 100,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 50,
            color: Colors.red,
          ),
        ],
      ), // mainA
    );
  }
}


// Column(), adalah widget yang akan menumpuk children-nya ke bawah. Secara default, tinggi dari widget row akan memenuhi pembungkusnya, jika tidak ada maka akan memenuhi layar, dan lebarnya akan relative terhadap lebar dari children-nya
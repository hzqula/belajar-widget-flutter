// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WidgetRow extends StatelessWidget {
  const WidgetRow({super.key});

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
      body: Row(
        mainAxisAlignment: MainAxisAlignment
            .center, // Untuk memposisikan children-nya, apakah akan berada di tengah, awal, akhir, dan berjarak pada Main Axis-nya, yaitu dari kiri ke kanan
        crossAxisAlignment: CrossAxisAlignment
            .start, // Untuk memposisikan children-nya, apakah akan berada di tengah, awal, akhir pada Cross Axis-nya, yaitu dari atas ke bawah. Akan lebih berpengaruh jika tingginya ditentukan. Karena jika tidak, maka secara default tinggi dari widget Row() akan relative terhadap tinggi children-nya.
        children: [
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
        ],
      ), // mainA
    );
  }
}

// Row(), adalah widget yang akan menumpuk children-nya ke samping. Secara default, lebar dari widget row akan memenuhi layar, dan tingginya akan relative terhadap tinggi dari children-nya
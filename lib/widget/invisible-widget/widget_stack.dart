// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WidgetStack extends StatelessWidget {
  const WidgetStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Invisible - Stack',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[500],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ],
        ),
      ), // mainA
    );
  }
}

// Stack(), adalah widget yang akan menumpuk children-nya kedepan. Jika `Column()` main axis-nya ke bawah dan `Row()` main axis-nya ke samping, maka `Stack()` main axis-nya ke depan
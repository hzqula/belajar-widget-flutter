// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listWidget = [
      {
        'title': 'Visible - Text',
        'subtitle': 'Membahas styling Text',
        'route': '/visible-text',
      },
      {
        'title': 'Invisible - Column',
        'subtitle': 'Membahas widget Column',
        'route': '/invisible-column',
      },
      {
        'title': 'Invisible - Row',
        'subtitle': 'Membahas widget Row',
        'route': '/invisible-row',
      },
      {
        'title': 'Invisible - Stack',
        'subtitle': 'Membahas widget Stack',
        'route': '/invisible-stack',
      },
      {
        'title': 'Invisible - ListView',
        'subtitle': 'Membahas widget ListView',
        'route': '/invisible-listview',
      },
      {
        'title': 'Invisible - ListTile',
        'subtitle': 'Membahas widget ListTile',
        'route': '/invisible-listtile',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Belajar Flutter Widget',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[500],
      ),
      body: ListView.builder(
        itemCount: listWidget.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(listWidget[index]['title']),
                subtitle: Text(listWidget[index]['subtitle']),
                onTap: () {
                  Navigator.pushNamed(context, listWidget[index]['route']);
                },
              ),
              const Divider(
                color: Colors.black, // Warna garis
                thickness: 1.0, // Ketebalan garis
                indent: 12, // Jarak indentasi dari kiri
                endIndent: 20, // Jarak indentasi dari kanan
              ),
            ],
          );
        },
      ),
    );
  }
}

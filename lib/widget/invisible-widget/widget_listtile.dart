// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class WidgetListTile extends StatelessWidget {
  WidgetListTile({super.key});

  List<Map<String, dynamic>> pemudaHijrah = [
    {
      'nama': 'Adit',
      'nama panjang': 'Adiiiiit',
      // 'warna tile': 'Colors.red',
    },
    {
      'nama': 'Apis',
      'nama panjang': 'Apiiiiis',
    },
    {
      'nama': 'Ahmad',
      'nama panjang': 'Ahmaaaad',
    },
    {
      'nama': 'Aldi',
      'nama panjang': 'Aldiiiii',
    },
    {
      'nama': 'Dapa',
      'nama panjang': 'Dapaaaaa',
    },
    {
      'nama': 'Dapa',
      'nama panjang': 'Dapaaaaa',
    },
    {
      'nama': 'Diki',
      'nama panjang': 'Dikiiiii',
    },
    {
      'nama': 'Dimas',
      'nama panjang': 'Dimaaaas',
    },
    {
      'nama': 'Dwi',
      'nama panjang': 'Dwiiiiii',
    },
    {
      'nama': 'Fajri',
      'nama panjang': 'Fajriiii',
    },
    {
      'nama': 'Gilang',
      'nama panjang': 'Gilaaang',
    },
    {
      'nama': 'Nabil',
      'nama panjang': 'Nabiiiil',
    },
    {
      'nama': 'Ogik',
      'nama panjang': 'Ogiiiiik',
    },
    {
      'nama': 'Pari',
      'nama panjang': 'Pariiiii',
    },
    {
      'nama': 'Paras',
      'nama panjang': 'Paraaaas',
    },
    {
      'nama': 'Rafly',
      'nama panjang': 'Rafliiii',
    },
    {
      'nama': 'Raka',
      'nama panjang': 'Rakaaaaa',
    },
    {
      'nama': 'Surya',
      'nama panjang': 'Suryaaaa',
    },
    {
      'nama': 'Zaki',
      'nama panjang': 'Zakiiiii',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Invisible - ListTile',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[500],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            height: 1,
            color: Colors.black,
          );
        },
        itemCount: pemudaHijrah.length,
        itemBuilder: (context, index) {
          return ListTile(
            // dense: true, // Untuk memadatkan konten dalam `subTitle`

            tileColor: Colors.lightGreen[100],
            // pemudaHijrah[index]['warna tile'] // Contoh jika ingin menggunakan warna yang berbeda-beda per ListTile()
            // Untuk memberikan warna per ListTile(), tapi karena kita memakai List pemudaHijrah untuk item-nya, maka semua widget listtile-nya akan berwarna hijau, untuk membedakannya bisa memberikan nilai warna yang berbeda-beda pada List pemudaHijrah

            // contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 4), // Untuk memberikan padding per ListTile

            // Saya akan menjelaskan beberapa properti di bawah ini dengan patokan studi kasusnya aplikasi WhatsApp

            leading: // Foto profil
                Icon(
              Icons.personal_injury_outlined,
              size: 32,
            ),

            title: Text("Nama: ${pemudaHijrah[index]['nama']}"), // Nama kontak

            subtitle: Text(
                "Nama Panjang: ${pemudaHijrah[index]['nama panjang']}"), // Isi chat terbaru

            trailing: Text('26:00 pm'), // Waktu chat terbaru dikirim
          );
        },
      ),
    );
  }
}

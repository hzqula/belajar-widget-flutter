// ignore_for_file: prefer_const_constructors

import 'package:belajar_flutter/main_screen.dart';
import 'package:belajar_flutter/widget/invisible-widget/widget_listtile.dart';
import 'package:belajar_flutter/widget/invisible-widget/widget_listview.dart';
import 'package:belajar_flutter/widget/invisible-widget/widget_row.dart';
import 'package:belajar_flutter/widget/invisible-widget/widget_stack.dart';
import 'package:belajar_flutter/widget/visible-widget/widget_text.dart';
import 'package:belajar_flutter/widget/invisible-widget/widget_column.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: {
        '/visible-text': (context) => WidgetText(),
        '/invisible-column': (context) => WidgetColumn(),
        '/invisible-row': (context) => WidgetRow(),
        '/invisible-stack': (context) => WidgetStack(),
        '/invisible-listview': (context) => WidgetListView(),
        '/invisible-listtile': (context) => WidgetListTile(),
      },
    );
  }
}

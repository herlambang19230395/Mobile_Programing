import 'package:flutter/material.dart';
import 'package:latihan_flutter_1/Hello_World.dart';
import 'package:latihan_flutter_1/baris_kolom.dart';
import 'package:latihan_flutter_1/column_widget.dart';
import 'package:latihan_flutter_1/row_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Flutter',
      home: BarisKolom(),
    );
  }
}

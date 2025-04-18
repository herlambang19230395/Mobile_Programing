import 'package:flutter/material.dart';

void main() {
  runApp(BarisKolom());
}

class BarisKolom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Baris dan Kolom'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Baris 1, Kolom 1'),
                Text('Baris 1, Kolom 2'),
                Text('Baris 1, Kolom 3'),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Baris 2, Kolom 1'),
                Text('Baris 2, Kolom 2'),
                Text('Baris 2, Kolom 3'),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Baris 3, Kolom 1'),
                Text('Baris 3, Kolom 2'),
                Text('Baris 3, Kolom 3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

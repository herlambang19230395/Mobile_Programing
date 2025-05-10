import 'package:flutter/material.dart';

class DetailMataKuliah extends StatelessWidget {
  final String matakuliah;
  final int sks;
  final String semester;

  const DetailMataKuliah(
      {super.key,
      required this.matakuliah,
      required this.sks,
      required this.semester});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Mahasiswa"),
        backgroundColor: const Color.fromARGB(255, 194, 243, 33),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Text("MataKuliah :" + matakuliah),
            Text("Sks : ${sks}"),
            Text("Semester : " + semester)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:latihan_flutter_1/detail_matakuliah.dart';

class FormMatakuliah extends StatefulWidget {
  const FormMatakuliah({super.key});

  @override
  State<FormMatakuliah> createState() => _FormMatakuliahState();
}

class _FormMatakuliahState extends State<FormMatakuliah> {
  final _formKey = GlobalKey<FormState>();
  final _matakuliahCtrl = TextEditingController();
  final _sksCtrl = TextEditingController();
  final _semesterCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah MataKuliah"),
        backgroundColor: const Color.fromARGB(255, 194, 243, 33),
        foregroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            matakuliahField(),
            SizedBox(height: 10),
            sksField(),
            SizedBox(height: 10),
            semesterField(),
            SizedBox(height: 10),
            tombolSimpan()
          ],
        ),
      ),
    );
  }

  Widget matakuliahField() {
    return TextField(
      decoration: InputDecoration(labelText: "MataKuliah"),
      controller: _matakuliahCtrl,
    );
  }

  Widget sksField() {
    return TextField(
      decoration: InputDecoration(labelText: "Sks"),
      controller: _sksCtrl,
    );
  }

  Widget semesterField() {
    return TextField(
      decoration: InputDecoration(labelText: "Semester"),
      controller: _semesterCtrl,
    );
  }

  Widget tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailMataKuliah(
                      matakuliah: _matakuliahCtrl.text,
                      sks: int.parse(_sksCtrl.text),
                      semester: _semesterCtrl.text)));
        },
        child: Text("Simpan"));
  }
}

import 'package:flutter/material.dart';

class TemaGelapTerang extends StatefulWidget {
  const TemaGelapTerang({super.key});

  @override
  State<TemaGelapTerang> createState() => _TemaGelapTerangState();
}

class _TemaGelapTerangState extends State<TemaGelapTerang> {
  bool _TemaGelap = false;

  void _Tema() {
    setState(() {
      _TemaGelap = !_TemaGelap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merubah Tema Gelap dan Terang'),
        backgroundColor: const Color.fromARGB(255, 194, 243, 33),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tema : ${_TemaGelap ? "Gelap" : "Terang"}',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _Tema,
              child: Icon(_TemaGelap ? Icons.light_mode : Icons.dark_mode),
            ),
          ],
        ),
      ),
      backgroundColor:
          _TemaGelap ? const Color.fromARGB(255, 46, 46, 46) : Colors.white,
    );
  }
}

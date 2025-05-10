import 'package:flutter/material.dart';
import './widget/card_widget.dart';

class Parsing extends StatelessWidget {
  const Parsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Parsing Data")),
      body: Column(
        children: [
          CardWidget(
              icon: Icons.account_balance,
              judul: "Universitas Bina Sarana Informatika"),
          CardWidget(icon: Icons.add_home_work, judul: "Pengenalan Flutter"),
          CardWidget(icon: Icons.add_location, judul: "Parsing Data"),
          CardWidget(icon: Icons.android, judul: "Mobile Programming")
        ],
      ),
    );
  }
}

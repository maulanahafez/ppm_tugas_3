import 'package:flutter/material.dart';
import 'package:ppm_tugas_3/side_menu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: const Center(
        child: Card(
          elevation: 4.0,
          margin: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(
                  'Biodata Diri',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Perkenalkan nama saya adalah Maulana Hafez seorang Mahasiswa Informatika Unsoed angkatan 2021',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}

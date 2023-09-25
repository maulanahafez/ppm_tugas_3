import 'package:flutter/material.dart';
import 'package:ppm_tugas_3/side_menu.dart';

class ExperiencesPage extends StatelessWidget {
  const ExperiencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Experiences Page"),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Staff Divisi Iltek HMIF Unsoed 2022'),
            subtitle: Text('Seorang staff Divisi Iltek pada HMIF Unsoed 2022'),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text('Ketua Pelaksana Soedirman Technophoria 2022'),
            subtitle: Text(
                'Menjadi ketua pelaksana kegiatan Seodirman Technophoria 2022 yang merupakan kegiatan tahunan dari HMIF Unsoed'),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text('Kerja Praktik pada CV Jenderal Solusi Digital'),
            subtitle: Text(
                'Melaksanakan kerja praktik pada CV Jenderal Solusi Digital pada bulan Juli sampai Agus'),
            leading: Icon(Icons.star),
          ),
        ],
      ),
      drawer: const SideMenu(),
    );
  }
}

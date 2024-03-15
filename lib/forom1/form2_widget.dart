import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String nama;
  final String nomorTelepon;
  final String alamat;
  final String jenisKelamin;

  ResultScreen({
    required this.nama,
    required this.nomorTelepon,
    required this.alamat,
    required this.jenisKelamin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama: $nama',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Nomor Telepon: $nomorTelepon',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Alamat: $alamat',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Jenis Kelamin: $jenisKelamin',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

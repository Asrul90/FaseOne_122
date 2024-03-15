import 'package:flutter/material.dart';

class MakananScreen extends StatefulWidget {
  const MakananScreen({Key? key, required this.nama, required this.notelpn})
      : super(key: key);

  final String nama;
  final String notelpn;

  @override
  State<MakananScreen> createState() => _MakananScreenState();
}

class _MakananScreenState extends State<MakananScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Submit'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama: ${widget.nama}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 12.0),
            Text(
              'Nomor Telepon: ${widget.notelpn}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

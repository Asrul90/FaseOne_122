import 'package:cmasben/Form/detail_screen.dart';
import 'package:cmasben/widget/form_widget.dart';
import 'package:cmasben/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MakananScreen extends StatefulWidget {
  MakananScreen({super.key, required this.nama, required this.notelp});

  final String nama;
  final String notelp;

  @override
  State<MakananScreen> createState() => _MakananScreenState();
}

class _MakananScreenState extends State<MakananScreen> {
  @override
  Widget build(BuildContext context) {
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var dessert = TextEditingController();

    var formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Data Makanan"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama : ${widget.nama}",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Telp : ${widget.notelp}",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  FormMakanan(
                    formKey: formKey,
                    etMakanan: makanan,
                    etMinuman: minuman,
                    etDessert: dessert,
                  )
                ],
              ),
            ),
            FooterMakanan(
              onPressedSubmit: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        nama: widget.nama,
                        notelp: widget.notelp,
                        makanan: makanan.text,
                        minuman: minuman.text,
                        dessert: dessert.text,
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

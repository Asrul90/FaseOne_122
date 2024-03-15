import 'package:cmasben/Form/form_screen.dart';
import 'package:cmasben/Form/form_widget.dart';
import 'package:cmasben/Form/header.form.dart';
import 'package:cmasben/widget/foter_widget.dart';
import 'package:flutter/material.dart';

class DataForm extends StatelessWidget {
  const DataForm({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var alamat = TextEditingController();
    var notelp = TextEditingController();

    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                HeaderForm(),
                FormWidget(
                  etNama: nama,
                  etAlamat: alamat,
                  etNotelp: notelp,
                  formKey: formKey,
                ),
                FooterWidget(
                  onPressedSubmit: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MakananScreen(
                            nama: nama.text,
                            notelp: notelp.text,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

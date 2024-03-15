import 'package:flutter/material.dart';

class FormMakanan extends StatefulWidget {
  const FormMakanan({
    super.key,
    required this.formKey,
    required this.etMakanan,
    required this.etMinuman,
    required this.etDessert,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDessert;

  @override
  State<FormMakanan> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormMakanan> {
  @override
  Widget build(BuildContext context) {
    return Form(
      // Properti 'Widget.' (khusus kelas Stateful) digunakan sebagai properti yang menerima parameter dari kelas induk 'Form Widget'
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            controller: widget.etMakanan,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Makanan",
              hintText: "MasukkanMakanan",
            ),
          ),
          SizedBox(height: 25),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: widget.etMinuman,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Minuman",
              hintText: "Masukkan Minuman",
            ),
          ),
          SizedBox(height: 25),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: widget.etDessert,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Dessert",
              hintText: "Masukkan Dessert",
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}

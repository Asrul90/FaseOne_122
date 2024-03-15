import 'package:flutter/material.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "masben Resto",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Welcome to C-MAS BEN"),
        SizedBox(height: 25),
        CircleAvatar(
          radius: 50, // Sesuaikan ukuran lingkaran sesuai kebutuhan
          backgroundImage: NetworkImage(
            "https://tse4.mm.bing.net/th?id=OIP.OTAk7wvUf_j7Ln8TMbbJCQHaE8&pid=Api&P=0&w=300&h=300",
          ),
        ),
      ],
    );
  }
}

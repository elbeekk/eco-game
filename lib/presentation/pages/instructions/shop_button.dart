import 'package:flutter/material.dart';

class ShopButtonInstruction extends StatelessWidget {
  const ShopButtonInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.76,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.black.withOpacity(.6),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.87,
            color: Colors.black.withOpacity(.6),
          ),
        ),
      ],
    );
  }
}

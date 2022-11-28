import 'package:flutter/material.dart';

class CenterGreyText extends StatelessWidget {
  const CenterGreyText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.grey,
      ),
    ));
  }
}

class LeftAlignGreyText extends StatelessWidget {
  const LeftAlignGreyText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
            child: Text(text,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.w500))));
  }
}

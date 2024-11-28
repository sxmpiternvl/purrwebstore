import 'package:flutter/material.dart';

class UnderlinedText extends StatelessWidget {
  final String text;
  final Color underlineColor;


  const UnderlinedText({
    super.key,
    required this.text,
    required this.underlineColor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 4,
            color: underlineColor,
            width: 118,
          ),
        ],
      ),
    );
  }
}
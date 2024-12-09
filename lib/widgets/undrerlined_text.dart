import 'package:flutter/material.dart';

class UnderlinedText extends StatelessWidget {
  final String text;
  final Gradient underlineGradient;

  const UnderlinedText({
    super.key,
    required this.text,
    required this.underlineGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 24, bottom: 24),
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
            width: 118,
            decoration: BoxDecoration(
              gradient: underlineGradient,
            ),
          ),
        ],
      ),
    );
  }
}

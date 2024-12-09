import 'package:flutter/material.dart';

class button extends StatelessWidget {
  String text;

  button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: screenWidth / 2 - 15,
        height: 60,
        child: TextButton(
          onPressed: () {},
          child: Text(text, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
              side: const BorderSide(color: Colors.black12, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class test2 extends StatelessWidget {
  const test2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textWidth = screenWidth * 0.6;

    return Container(
      width: screenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background1.png"),
          fit: BoxFit.cover,
          opacity: 0.3,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 23),
          SizedBox(
            width: textWidth,
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Составим схему идеального домашнего ухода",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: textWidth,
            child: const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "10 вопросов о вашей коже",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(height: 16),
           Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: SizedBox(
              width: 118,
              height: 40,
              child: TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF2B2B2B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
                child: Text(
                  "Пройти тест",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 23),
        ],
      ),
    );
  }
}

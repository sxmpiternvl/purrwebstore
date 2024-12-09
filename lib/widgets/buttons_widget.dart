import 'package:flutter/material.dart';

import 'button.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: SizedBox(

        height: 128,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                button(text: "Для очищения"),

                button(text: "Для питания"),
              ],
            ),

            Column(
              children: [
                button(text: "Для увлажнения"),

                button(text: "Для омоложения"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
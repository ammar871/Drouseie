

import 'package:flutter/cupertino.dart';

class CoustomButton extends StatelessWidget {
  late final String text;
  late final Color colorText;
  late final Color color;

  CoustomButton(this.text,this.colorText, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: colorText),
        ),
      ),
    );
  }
}

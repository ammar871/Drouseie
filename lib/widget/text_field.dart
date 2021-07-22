import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  final String hint;
  late final Function onClick;
  late BuildContext context;

  MyTextField(this.hint);
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
         boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: .1,
        blurRadius: 2,
        offset: Offset(0, .8), // changes position of shadow
      ),
    ]
    ),
    height: 53,
    child: Center(
      child: TextFormField(
        // controller: controller,

        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
          
            focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 15, bottom: 0, top: 0, right: 15),
          hintText: hint,
          fillColor: Colors.white,
        )),
    ),
    );
  }
}

import 'package:douroosi/constans/constans.dart';
import 'package:douroosi/screens/auth/login_screen/login/componts/custom_button.dart';
import 'package:douroosi/screens/auth/login_screen/signUp/componts/socialSignUp.dart';
import 'package:douroosi/widget/fade_translate.dart';
import 'package:douroosi/widget/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../testing_screen.dart';

// ignore: must_be_immutable

class SignUpStudant extends StatelessWidget {
  int selcteeType = 1;
  bool _isExpanded = false;
  SignUpStudant(this.selcteeType, this._isExpanded);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField("Enter your email"),
        SizedBox(
          height: 10,
        ),
        MyTextField("Enter your password"),
        SizedBox(
          height: 15,
        ),
        ExpandedSection(
          _isExpanded,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Column(
              children: [
                MyTextField("Topics"),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        CoustomButton("Get Started", Colors.white, KUnEnabledColor),
        Center(
          child: ExpandedSection(
              _isExpanded,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Pause with Comma",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ))
                ],
              )),
        ),
        SizedBox(
          height: 15,
        ),
       
        RegisterSocia(),
        SizedBox(
          height: 18,
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black54,
                    )),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: Text("Log in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: KTextColor1,
                          decoration: TextDecoration.underline,
                          height: 1.5)),
                )
              ],
            )),
      ],
    );
  }
}


import 'package:douroosi/constans/constans.dart';


import 'package:douroosi/screens/auth/login_screen/login/componts/login_social.dart';
import 'package:douroosi/widget/text_field.dart';
import 'package:douroosi/widget/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';


// ignore: must_be_immutable
class BodyLogin extends StatelessWidget {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Image.asset(
              "images/imgsplash.png",
              fit: BoxFit.fitWidth,
              height: 40,
              width: 250,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Login To Douroosi",
                      style: textStyleall,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextField("Enter your email"),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextField("Enter your password"),
                    SizedBox(
                      height: 15,
                    ),
                    CoustomButton("Get Started", Colors.white, KUnEnabledColor),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                            child: Container(
                          color: Color(0xFFF0F0F0),
                          height: 1.5,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text("OR",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.black54,
                              )),
                        ),
                        Expanded(
                            child: Container(
                          color: Color(0xFFF0F0F0),
                          height: 1.5,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                   LoginSocialLogin(),
                    SizedBox(
                      height: 18,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/signUp');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Sign Up",
                          style: textStyletext,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Forget Password ?",
                        style: textStyletext,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

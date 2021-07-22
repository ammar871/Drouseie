import 'package:douroosi/constans/constans.dart';

import 'package:douroosi/screens/auth/login_screen/signUp/componts/sign_up_studant.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int selectTab = 1;
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: KHomeColor,
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "images/imgsplash.png",
                  fit: BoxFit.fitWidth,
                  height: 40,
                  width: 250,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 700,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),

                          

                        Text(
                          selectTab == 1
                              ? "SignUp For Your FREE Douroosi Account"
                              : "Be a Teacher",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 300,
                          alignment: Alignment.center,
                          child: Text(
                            selectTab == 1
                                ? "No obligations,unsubscribe anytime"
                                : "There is no obligation, you can cancel at any time. Register now for teachers at douroosi",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          height: 40,
                          child: Row(
                            children: [
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  selectTab = 1;
                                   _expanded = false;
                                  setState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: selectTab == 1
                                          ? KtabselectedColor1
                                          : KtabUnselectedColor1,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      'Studant'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: selectTab == 1
                                              ? KtabColor1
                                              : Colors.black45),
                                    ),
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  selectTab = 0;
                                  _expanded = true;
                                  setState(() {});
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: selectTab == 0
                                            ? KtabselectedColor1
                                            : KtabUnselectedColor1,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topRight: Radius.circular(10))),
                                    child: Center(
                                        child: Text(
                                      'Tutor'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: selectTab == 0
                                              ? KtabColor1
                                              : Colors.black45),
                                    ))),
                              ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        SignUpStudant(selectTab, _expanded)
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}

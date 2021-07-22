import 'package:douroosi/constans/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginSocialLogin extends StatefulWidget {
 

  @override
  _LoginSocialMediaState createState() => _LoginSocialMediaState();
}

class _LoginSocialMediaState extends State<LoginSocialLogin> {
  @override
  Widget build(BuildContext context) {
     
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: KBlueColor,
             boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: .1,
                  blurRadius: 2,
                  offset: Offset(0, .8), // changes position of shadow
                ),
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'images/icons/facebook.svg',
                  width: 20,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Facebook",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )),
        SizedBox(
          width: 2,
        ),
        Expanded(
            child: Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: .1,
                  blurRadius: 2,
                  offset: Offset(0, .8), // changes position of shadow
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'images/icons/google.svg',
                  width: 20,
                  height: 25,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Google",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ))
      ],
    );
  }
}

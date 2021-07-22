import 'package:douroosi/constans/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterSocia extends StatefulWidget {
 

  @override
  _LoginSocialMediaState createState() => _LoginSocialMediaState();
}

class _LoginSocialMediaState extends State<RegisterSocia> {
  @override
  Widget build(BuildContext context) {
     
    return Column(
      children: [
        Container(
          width: double.infinity,
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
        child: Stack(
         
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: SvgPicture.asset(
                  'images/icons/facebook.svg',
                  width: 20,
                  height: 25,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Log in with Facebook",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
          ),
        ),
        SizedBox(
          height: 10,
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
          height: 10,
        ),
                  
        Container(
          width: double.infinity,
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
        child: Stack(
         
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,

              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SvgPicture.asset(
                  'images/icons/google.svg',
                  width: 20,
                  height: 25,
                ),
              ),
            ),
           
            Positioned(
                 top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Log in with Googe",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
          ),
        )
      ],
    );
  }
}

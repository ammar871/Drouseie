import 'package:douroosi/constans/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String ID = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: InkWell(
            onTap: () => _key.currentState!.openDrawer(),
            child: Icon(Icons.menu, color: Colors.black)),
        title: Text(
          "DashBoard",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
          child: Container(
            color: Color(0xFFFFFFFF),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "images/imgsplash.png",
                            fit: BoxFit.fitWidth,
                            height: 40,
                            width: 200,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.close,
                                size: 40,
                                color: Colors.black45,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: KCSearch,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 60,
                        child: Center(
                          child: TextFormField(
                              // controller: controller,

                              style: TextStyle(fontSize: 18),
                              decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 0, bottom: 0, top: 0, right: 15),
                                hintText: "what lessons can we help",
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.search,
                                    size: 30,
                                    color: Colors.black12,
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: double.infinity,
                      color: KColor1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Google User",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
                            ),
                            Icon(Icons.arrow_forward_ios_sharp,size: 20,color: Colors.black,)
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}

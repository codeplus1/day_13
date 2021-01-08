import 'dart:ui';

import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Icon(Icons.notifications_active),
          Padding(padding: EdgeInsets.all(10))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              // ignore: deprecated_member_use
              overflow: Overflow.visible,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      gradient: LinearGradient(colors: [
                        Colors.blue,
                        Colors.indigo,
                      ])),
                ),
                Positioned(
                  top: 85,
                  left: 20,
                  child: Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4oz0KdCvHj_hvY5exy-qFr06SPFjyA4ZoPg&usqp=CAU'),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Charlotte",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Software Developer,Nepal",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 165,
                  left: 25,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: " My Balance:",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey[300]),
                                ),
                                TextSpan(
                                  text: " \$1000",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black54,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[100],
                                    radius: 30,
                                    child: Icon(
                                      Icons.cake,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Drop-off",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[100],
                                    radius: 30,
                                    child: Icon(
                                      Icons.bus_alert,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Pick Up",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[100],
                                    radius: 30,
                                    child: Icon(
                                      Icons.shopping_bag,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Shop",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[100],
                                    radius: 30,
                                    child: Icon(
                                      Icons.money,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Top Up",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 400,
                  left: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Explore OLLO Life",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle:
                              Text("Discover more things and Grab Offers"),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                gradient: LinearGradient(
                                  colors: [Colors.blue, Colors.indigo],
                                ),
                              ),
                              child: Text(
                                "View All",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

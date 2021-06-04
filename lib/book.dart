import "package:flutter/material.dart";
import 'package:ola/drawer.dart';
import 'package:ola/main.dart';
import "package:ola/navi.dart";

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  bool _isLiked = false;
  int sta = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldState,
        drawer: Drawerr(),
        body: Stack(
          children: [
            Image(
              image: AssetImage("images/map.png"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.5,
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.65,
              minChildSize: 0.65,
              maxChildSize: 1,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    child: ListView.builder(
                        itemCount: 1,
                        controller: scrollController,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          sta = 0;
                                        });
                                      },
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        // color: Colors.blue,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 50,
                                              child: Image(
                                                image: AssetImage(
                                                    "images/Navigation Icons/Daily.jpeg"),
                                              ),
                                            ),
                                            Text(
                                              "Daily",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          sta = 1;
                                        });
                                      },
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        // color: Colors.blue,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 50,
                                              child: Image(
                                                image: AssetImage(
                                                    "images/Navigation Icons/Rentals.jpeg"),
                                              ),
                                            ),
                                            Text(
                                              "Rentals",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          sta = 2;
                                        });
                                      },
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        // color: Colors.blue,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 50,
                                              child: Image(
                                                image: AssetImage(
                                                    "images/Navigation Icons/Outstation.jpeg"),
                                              ),
                                            ),
                                            Text(
                                              "Outstation",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                naviList(context, sta),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  width: 350,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0.0, 1.0),
                                          blurRadius: 6.0,
                                        ),
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          // color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        height: double.infinity,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              child: Text(
                                                "Enjoying the new Ola App?",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 50,
                                              width: 200,
                                              // color: Colors.red,ss
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: 60,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey,
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                            blurRadius: 6.0,
                                                          ),
                                                        ]),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .thumb_down_alt_sharp,
                                                          color: Color.fromRGBO(
                                                              236, 188, 180, 1),
                                                        ),
                                                        Text("No")
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Container(
                                                    height: 35,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey,
                                                            offset: Offset(
                                                                0.0, 1.0),
                                                            blurRadius: 6.0,
                                                          ),
                                                        ]),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .thumb_up_alt_sharp,
                                                          color: Color.fromRGBO(
                                                              236, 188, 180, 1),
                                                        ),
                                                        Text("Yes")
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: double.infinity,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              bottomLeft: Radius.circular(5)),
                                          child: Image(
                                            image:
                                                AssetImage("images/side.jpeg"),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                );
              },
            ),
            Positioned(
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0,
                      ),
                    ]),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          _scaffoldState.currentState.openDrawer();
                        }),
                    Container(
                      height: double.infinity,
                      width: 260,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Search for an address or landmark",
                            hintStyle: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                            )),
                      ),
                    ),
                    IconButton(
                        icon: _isLiked
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_outline,
                                color: Colors.grey[600],
                              ),
                        onPressed: () {
                          setState(() {
                            _isLiked = !_isLiked;
                          });
                        })
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

import 'dart:math';

import "package:flutter/material.dart";
import 'package:ola/book.dart';

class CnfBook extends StatefulWidget {
  final String pickup;
  final String desti;
  const CnfBook({this.pickup, this.desti});
  @override
  _CnfBookState createState() => _CnfBookState();
}

class _CnfBookState extends State<CnfBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("images/map.png"),
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.5,
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.35,
            minChildSize: 0.35,
            maxChildSize: 1,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView.builder(
                      controller: scrollController,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Container(
                                      width: 200,
                                      child: Text(widget.pickup),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Container(
                                        width: 200, child: Text(widget.desti))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                height: 400,
                                width: double.infinity,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    vehi("Book Any", "BookAny",
                                        "Mini, Prime Sedan", 110),
                                    vehi("Mini", "Mini",
                                        "Comfy, economical cars", 80),
                                    vehi("Prime Sedan", "PrimeSedan",
                                        "Spacious sedans, top drivers", 145),
                                    vehi("Auto", "Auto",
                                        "Get autos at your doorstep", 85),
                                    vehi("Bike", "Bike",
                                        "Beat the traffic on a bike", 50),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    showAlertDialog();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                  ),
                                  child: Text(
                                    "Book Ride",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      wordSpacing: 1.5,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }));
            },
          )
        ],
      ),
    );
  }

  Widget vehi(String veh, String img, String msg, int maxi) {
    print("Fucntion Called");
    Random random = new Random();
    int pri = random.nextInt(maxi);
    return GestureDetector(
      onTap: () {
        showAlertDialog();
      },
      child: Container(
        height: 80,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 50,
              child: Image(
                image: AssetImage("images/Vehicles/$img.jpeg"),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Container(
              height: 100,
              width: 210,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$veh",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$msg",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 100,
                // color: Colors.red,
                alignment: Alignment.centerRight,
                child: Text(
                  "₹ $pri",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  showAlertDialog() {
    Widget schmore = FlatButton(
      child: Text("Schedule More"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Booking()),
        );
      },
    );
    Widget ok = FlatButton(
      child: Text("Ok"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("Booking Successful"),
      content:
          Text("Congratulations!!!!Your ride has been scheduled with us.."),
      actions: [
        schmore,
        ok,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

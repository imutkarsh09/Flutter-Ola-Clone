import "package:flutter/material.dart";
import 'package:ola/destiSelect.dart';

Widget naviList(BuildContext context, int sta) {
  List<String> loca = ["Kanpur", "Lucknow", "Ayodhya", "Varanasi"];
  String address = "Delhi-NCR, Meerut Road (NH-58)";
  List<Widget> navi = [
    Container(
      width: 350,
      height: 200,
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
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search_rounded,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search Destination",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DestiSel()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            height: 120,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: List.generate(5, (index) {
                return ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text(address),
                );
              }),
            ),
          )
        ],
      ),
    ),
    Container(
      width: 350,
      height: 200,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.timelapse_rounded),
              SizedBox(
                width: 10,
              ),
              Text(
                "Select a package",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Container(
            height: 80,
            // color: Colors.red,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) {
                  index = index + 1;
                  int dist = index * 10;
                  return GestureDetector(
                    onTap: () {
                      print("Ok");
                    },
                    child: Container(
                      height: 10,
                      width: 50,
                      margin: EdgeInsets.all(20),
                      // padding: EdgeInsets.all(10),
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
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Text(
                              "$index hr",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("$dist km"),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Container(
            color: Colors.green[800],
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                  child: Text(
                    "Multiple stops, top drivers, affordable fares and more with Ola Rentals.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      width: 350,
      height: 200,
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
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search_rounded,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search Destination",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DestiSel()));
            },
          ),
          Container(
            height: 140,
            // color: Colors.red,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(4, (index) {
                  return GestureDetector(
                    onTap: () {
                      print("Ok");
                    },
                    child: Container(
                        // color: Colors.blue,
                        height: 140,
                        width: 100,
                        margin: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image(
                                    image: AssetImage(
                                        "images/Locations/loca_$index.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Text(loca[index]),
                          ],
                        )),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    ),
  ];
  return (navi[sta]);
}

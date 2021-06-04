import "package:flutter/material.dart";
import 'package:ola/book.dart';

class Permi extends StatefulWidget {
  @override
  _PermiState createState() => _PermiState();
}

class _PermiState extends State<Permi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage("images/permi.jpeg"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.2,
                margin: EdgeInsets.symmetric(horizontal: 50),
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to Ola",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      children: [
                        Text(
                          "Have a hassle-free booking experience by giving us the following permissions.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Location (for finding available rides)",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Phone (for account security verification)",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(25, 30, 25, 100),
                child: RaisedButton(
                    color: Colors.black,
                    child: Text(
                      "ALLOW",
                      style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Booking()));
                    }),
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:ola/signup.dart';
import "dart:ui";
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.65,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage("images/ola.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height / 15,
              // ),
              // Text("Hell0"),
              Container(
                margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                height: MediaQuery.of(context).size.height / 3.1,
                width: MediaQuery.of(context).size.width,
                // color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.red,
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 1.8,
                      margin: EdgeInsets.only(top: 10),
                      child: Wrap(
                        children: [
                          Text(
                            "Explore new ways to travel with Ola",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                        ),
                        child: Text(
                          "Continue with Phone Number",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.5,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.4,
                          child: ElevatedButton(
                            onPressed: () {
                              showAlertDialog();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 35,
                                  width: 35,
                                  child: Image(
                                    image: AssetImage(
                                        "images/Social Icons/google_icon.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "Google",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 1.5,
                                    fontSize: 17.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.4,
                          child: ElevatedButton(
                            onPressed: () {
                              print("Facebook");
                              showAlertDialog();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image(
                                    image: AssetImage(
                                        "images/Social Icons/facebook_icon.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "Facebook",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 1.5,
                                    fontSize: 17.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text:
                                      "By continuing, you agree that you have read and accept our ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[600],
                                  )),
                              TextSpan(
                                  text: "T&Cs",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    decoration: TextDecoration.underline,
                                    fontSize: 15,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launchUrl(
                                          "https://www.olacabs.com/info/faqs#termsAndConditions");
                                    }),
                              TextSpan(
                                  text: " and ",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 15,
                                  )),
                              TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    decoration: TextDecoration.underline,
                                    fontSize: 15,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launchUrl(
                                          "https://www.olacabs.com/info/faqs#privacyPolicy");
                                    })
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void launchUrl(String link) async {
    String url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Connect to internet";
    }
  }

  showAlertDialog() {
    Widget okButton = FlatButton(
      child: Text("I Can Understand"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("Apology Message"),
      content: Text(
          "This functionality has not been added yet!!! Hope you can wait!!."),
      actions: [
        okButton,
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

import 'dart:async';
import 'dart:math';

import "package:flutter/material.dart";
import 'package:ola/permi.dart';

class Otp extends StatefulWidget {
  final String phnum;
  const Otp({this.phnum});
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _otp;
  String txt = "Didn't recieve OTP?";
  String cd = "";
  String tim;
  String last = "Resend OTP         Get OTP over call";
  Timer _timer;
  bool _isDisabled = true;
  int sta = 15;
  bool _isEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.grey[700],
        ),
        elevation: 0,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20), child: Icon(Icons.more_vert))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(40, 20, 130, 0),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Text(
                        "Please wait.\nWe will auto verify the OTP sent to ${widget.phnum}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _formKey,
                    child: TextField(
                      enabled: _isEnabled,
                      maxLength: 4,
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 35,
                      ),
                      controller: _otp,
                      decoration: InputDecoration(counterText: ""),
                      keyboardType: TextInputType.number,
                      onChanged: (_otp) {
                        print(_otp);
                        if (_otp.toString().length == 4) {
                          setState(() {
                            _isEnabled = false;
                            txt = "Auto verifying your OTP in";
                            last = "";
                            countdown();
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    txt,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    cd,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    last,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: _isDisabled
                    ? null
                    : () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Permi()));
                      },
                style: ElevatedButton.styleFrom(
                  primary: _isDisabled ? Colors.grey[600] : Colors.black,
                ),
                child: Text(
                  "Next",
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
      ),
    );
  }

  countdown() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (timer) {
      if (sta == 5) {
        setState(() {
          timer.cancel();
          cd = "";
          txt = "";
          _isDisabled = false;
        });
      } else {
        setState(() {
          if (sta >= 10) {
            tim = sta.toString();
          } else {
            tim = "0" + sta.toString();
          }
          cd = "(00:" + tim + ")";
          sta--;
        });
      }
    });
  }
}

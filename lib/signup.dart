import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ola/otp.dart';
import 'package:ola/permi.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isDisabled = true;
  String phno;
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.grey[700],
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 20, 40, 100),
                // color: Colors.blue,
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "Enter Phone number for verification",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      children: [
                        Text(
                          "This number will be used for ride-related communication. You shall recieve an SMS with code for verification.",
                          style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.grey[600],
                            // wordSpacing: ,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                        key: _formKey,
                        child: IntlPhoneField(
                          decoration: InputDecoration(
                            hintText: "Your number",
                            counterText: "",
                          ),
                          initialCountryCode: "IN",
                          onChanged: (phone) {
                            phno = phone.completeNumber.toString();
                            print(phone.completeNumber);
                            print(_formKey.currentState.validate());
                            if (_formKey.currentState.validate()) {
                              setState(() {
                                _isDisabled = false;
                              });
                            } else {
                              setState(() {
                                _isDisabled = true;
                              });
                            }
                          },
                        ))
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(25, 30, 25, 100),
                child: RaisedButton(
                    color: _isDisabled ? Colors.grey[600] : Colors.black,
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: _isDisabled
                        ? null
                        : () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Otp(phnum: phno)),
                            );
                          }),
              )
            ],
          ),
        ));
  }
}

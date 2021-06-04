import "package:flutter/material.dart";
import "cnfbook.dart";

class DestiSel extends StatefulWidget {
  @override
  _DestiSelState createState() => _DestiSelState();
}

class _DestiSelState extends State<DestiSel> {
  TextEditingController pickup = null;
  TextEditingController desti = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Destination",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          child: TextFormField(
                            cursorColor: Colors.black,
                            controller: pickup,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Enter pickup location",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                )),
                          ),
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
                          width: 200,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            controller: desti,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Enter destination location",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Previous Locations",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: List.generate(5, (index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CnfBook(
                                  pickup: pickup == null
                                      ? "KIET Group Of Institutions"
                                      : pickup.text,
                                  desti: desti == null
                                      ? "KIET Group Of Institutions"
                                      : desti.text,
                                )),
                      );
                    },
                    title: Text("KIET Group Of Institutions"),
                    subtitle: Text("Delhi-NCR, Meerut Road (NH-58)"),
                    leading: Icon(Icons.location_on_outlined),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CnfBook(
                                pickup: pickup == null
                                    ? "KIET Group Of Institutions"
                                    : pickup.text,
                                desti: desti == null
                                    ? "KIET Group Of Institutions"
                                    : desti.text,
                              )),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text(
                    "Confirm Location",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1.5,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

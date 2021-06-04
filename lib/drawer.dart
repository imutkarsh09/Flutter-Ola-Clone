import "package:flutter/material.dart";

class Drawerr extends StatefulWidget {
  @override
  _DrawerrState createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
            arrowColor: Colors.red,
            currentAccountPicture: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("images/account.png"),
              backgroundColor: Colors.red,
            ),
          ),
          liti("Your Rides", Icon(Icons.timeline_rounded)),
          liti("Drive Bookings", Icon(Icons.drive_eta_outlined)),
          liti("Payments", Icon(Icons.payment)),
          liti("Ola Money", Icon(Icons.money)),
          liti("Insurance", Icon(Icons.family_restroom_rounded)),
          liti("Refer & Earn", Icon(Icons.card_giftcard_outlined)),
          liti("Support", Icon(Icons.support)),
          liti("Drive Bookings", Icon(Icons.drive_eta_outlined)),
          liti("Join Ola Select", Icon(Icons.select_all_outlined)),
          liti("Ola Pass", Icon(Icons.featured_play_list_sharp)),
          liti("About", Icon(Icons.info_sharp)),
        ],
      ),
    );
  }

  Widget liti(String text, Icon ico) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: ico,
      onTap: () {},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/core/route/routes.dart';

class DrawerCommon extends StatelessWidget {
  const DrawerCommon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.cyan,
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Welcome Admin"),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Login"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(title: Text("Home")),
          ListTile(title: Text("Review Card")),
          ListTile(
              title: Text("My Profile"),
              onTap: () {
                Navigator.pushNamed(context, Routes.myProfileScreen);
              }),
          ListTile(title: Text("Notification")),
          ListTile(title: Text("Rating & Review")),
          ListTile(title: Text("Wish List")),
          ListTile(title: Text("Raise a Complaint")),
          ListTile(title: Text("FAQs")),
        ],
      ),
    );
  }
}

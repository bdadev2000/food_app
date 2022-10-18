import 'package:flutter/material.dart';
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
                SizedBox(width: 20,),
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
            ),),
          ListTile(title: Text("Home"),leading: Icon(Icons.home),),
          ListTile(title: Text("Review Card"),leading: Icon(Icons.home),),
          ListTile(title: Text("My Profile"),leading: Icon(Icons.home),),
          ListTile(title: Text("Notification"),leading: Icon(Icons.home),),
          ListTile(title: Text("Rating & Review"),leading: Icon(Icons.home),),
          ListTile(title: Text("Wish List"),leading: Icon(Icons.home),),
          ListTile(title: Text("Raise a COmplaint"),leading: Icon(Icons.home),),
          ListTile(title: Text("FAQs"),leading: Icon(Icons.home),),

        ],
      ),
    );
  }
}
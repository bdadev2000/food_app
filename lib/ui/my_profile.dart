import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: ListView(
        children: [
          Row(
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
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Edit"),
                  ),
                ],
              ),

            ],
          ),
          ListTile(
            title: Text("My Order"),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
          ListTile(
            title: Text("My Delivery Address"),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
          ListTile(
            title: Text("Refer A Friends"),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
          ListTile(
            title: Text("Terms & Conditions"),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
          ListTile(
            title: Text("Privacy Policy"),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
          ListTile(
            title: Text("My Orders"),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
          ListTile(
            title: Text("Log out"),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
        ],
      ),
    );
  }
}

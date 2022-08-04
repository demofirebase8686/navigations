import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width * .6,
      child: ListView(
        dragStartBehavior: DragStartBehavior.down,
        children: const [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(child: Text("Ajay")),
              accountName: Text("Ajay Sagar"),
              accountEmail: Text("sajaysagar7@gmail.com")),
          Divider(),
          ListTile(
            title: Text("profile"),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text("chats"),
            leading: Icon(Icons.chat),
          ),
          ListTile(
            title: Text("calls"),
            leading: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("persons"),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text("tools"),
            leading: Icon(Icons.toll),
          ),
        ],
      ),
    );
  }
}

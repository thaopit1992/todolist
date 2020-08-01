// import 'dart:html';

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  Widget buildIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.grey,
      size: 35.0,
    );
  }

  Widget buildIconMenu(BuildContext context, IconData icon) {
    return IconButton(
      icon: Icon(icon),
      // onPressed: () {
      //   // showIconMenu();
      // },
      onPressed: () => Scaffold.of(context).openDrawer(),

    );
  }

  Widget showIconMenu() {
    debugPrint("mvd");

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Term & Condition'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Privacy Policy'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget buildIconTransparent(IconData icon) {
    return Icon(
      icon,
      color: Colors.transparent,
      size: 35.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
      child: Row(
        children: <Widget>[
          buildIconMenu(context ,Icons.menu),
          Expanded(
            child: Text(
              'TODO',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          // buildIcon(Icons.search),
          buildIconTransparent(Icons.search), //-- ẩn icon search
        ],
      ),
    );

    
  }
}

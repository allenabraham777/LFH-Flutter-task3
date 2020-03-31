import 'package:flutter/material.dart';

class UserDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(
              "allen.nssce@gmail.com",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            accountName: Text("Allen K Abraham",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.person,
                  size: 40.0,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent
            ),
          ),
          DrawerMenu()
        ],
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Home Page'),
            leading: Icon(
              Icons.home,
              color: Colors.blueAccent,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('My Account'),
            leading: Icon(
              Icons.person,
              color: Colors.blueAccent,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('My Orders'),
            leading: Icon(
              Icons.shopping_basket,
              color: Colors.blueAccent,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Categories'),
            leading: Icon(
              Icons.category,
              color: Colors.blueAccent,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Favourites'),
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ),
        Divider(),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Settings'),
            leading: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('About'),
            leading: Icon(
              Icons.info,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
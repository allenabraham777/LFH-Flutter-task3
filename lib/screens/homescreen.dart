import 'package:ecommerce_ui/widgets/categories.dart';
import 'package:ecommerce_ui/widgets/drawer.dart';
import 'package:ecommerce_ui/widgets/productgrid.dart';
import 'package:ecommerce_ui/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('GROCERY'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      drawer: UserDrawer(),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SearchBar(),
          Categories(),
          ProductGrid()
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

var cartItems = [
  {
    "item" : "Coca Cola",
    "picture" : "images/cocacola.png",
    "quantity" : "600 ml",
    "price" : 30,
    "count" : 2
  },
  {
    "item" : "Pepsi",
    "picture" : "images/pepsi.png",
    "quantity" : "600 ml",
    "price" : 30,
    "count" : 1
  }
];

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 15.0),
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (BuildContext context, int index) {
            return CartCard(index);
          }
        ),
      )
    );
  }
}

class CartCard extends StatefulWidget {

  final int index;

  CartCard(this.index);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  
  int countOfItem;
  int price;
  int total;

  @override
  Widget build(BuildContext context) {
    countOfItem = cartItems[widget.index]["count"];
    price = cartItems[widget.index]["price"];
    total = countOfItem * price;

    return Container(
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0
          )
        ]
      ),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cartItems[widget.index]["picture"]),
                fit: BoxFit.contain
              )
            ),
            width: 150.0,

          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30.0),
                  Text(
                    cartItems[widget.index]["item"],
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    cartItems[widget.index]["quantity"],
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Price : " + total.toString()
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          if(countOfItem != 1)
                            setState(() {
                              countOfItem--;
                            });
                        },
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          child: Icon(
                            Icons.remove,
                            size: 10.0,
                            color: Colors.blueAccent,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              width:2.0,
                              color: Colors.blueAccent
                            )
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 20.0,
                        height: 20.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            countOfItem.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width:2.0,
                            color: Colors.blueAccent
                          )
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: () {
                          setState(() {
                            countOfItem++; 
                          });
                        },
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              color: Colors.blueAccent,
                              size: 15.0,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              width:2.0,
                              color: Colors.blueAccent
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
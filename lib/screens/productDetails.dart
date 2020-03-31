import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;
  final productDiscount;
  final productQuantity;

  ProductDetails({
    this.productName,
    this.productPicture,
    this.productOldPrice,
    this.productPrice,
    this.productDiscount,
    this.productQuantity
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search)
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart)
          ),
        ],
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage(widget.productPicture))
            ),
            height: 250.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  child: widget.productDiscount != "" ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: Text(
                      widget.productDiscount + " OFF",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ): Text("")
                ),
                SizedBox(height: 20.0),
                Text(
                  widget.productName,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  child: widget.productDiscount != "" ? Text(
                    "MRP: Rs" + widget.productOldPrice,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.w600
                    ),
                  ): Text("")
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Text(
                      "Selling Price: ",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      "Rs " + widget.productPrice,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.blueAccent
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  "Quantity : " + widget.productQuantity,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        setState(() {
                          count++; 
                        });
                      },
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        child: Icon(
                          Icons.add,
                          size: 25.0,
                          color: Colors.blueAccent,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width:5.0,
                            color: Colors.blueAccent
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          count.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          width:5.0,
                          color: Colors.blueAccent
                        )
                      ),
                    ),
                    SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        if(count != 1)
                          setState(() {
                            count--;
                          });
                      },
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.remove,
                            color: Colors.blueAccent,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width:5.0,
                            color: Colors.blueAccent
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Text(
                            "Add to Card",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50.0)
              ],
            ),
          )
        ],
      ),
    );
  }
}
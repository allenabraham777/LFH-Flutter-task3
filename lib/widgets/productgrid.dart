import 'package:ecommerce_ui/screens/productDetails.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatefulWidget {
  @override
  _ProductGridState createState() => _ProductGridState();
}


class _ProductGridState extends State<ProductGrid> {
  var productList = [
    {
      "name":"Coca Cola Softdrink (Bottle)",
      "picture":"images/cocacola.png",
      "old_price":"35",
      "price":"30",
      "discount":"14%",
      "quantity":"600ml"
    },
    {
      "name":"Pepsi Softdrink (Bottle)",
      "picture":"images/pepsi.png",
      "old_price":"35",
      "price":"30",
      "discount":"14%",
      "quantity":"600ml"
    },
    {
      "name":"AVT Dust Tea Packet",
      "picture":"images/avttea.png",
      "old_price":"35",
      "price":"30",
      "discount":"14%",
      "quantity":"250g"
    },
    {
      "name":"Bru Instant Coffee Packet",
      "picture":"images/brucoffee.png",
      "old_price":"35",
      "price":"30",
      "discount":"14%",
      "quantity":"250g"
    },
    {
      "name":"Nescafe Instant Coffee Packet",
      "picture":"images/nescafecoffee.png",
      "old_price":"",
      "price":"35",
      "discount":"",
      "quantity":"100g"
    },
  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    
    final double itemHeight = 264;
    final double itemWidth = size.width / 2;

    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: productList.length,
        controller: new ScrollController(keepScrollOffset: false),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisCount: 2
        ),
        itemBuilder: (BuildContext context, int index){
          return ProductCard(
            productName: productList[index]["name"],
            productPicture: productList[index]["picture"],
            productOldPrice: productList[index]["old_price"],
            productPrice: productList[index]["price"],
            productDiscount: productList[index]["discount"],
            productQuantity: productList[index]["quantity"],
            
          );
        }
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;
  final productDiscount;
  final productQuantity;

  ProductCard({
    this.productName,
    this.productPicture,
    this.productOldPrice,
    this.productPrice,
    this.productDiscount,
    this.productQuantity
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(
          productName: productName,
          productPicture: productPicture,
          productOldPrice: productOldPrice,
          productPrice: productPrice,
          productDiscount: productDiscount,
          productQuantity: productQuantity
        ))),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                offset: Offset(1, 1),
                blurRadius: 2.0
              )
            ]
          ),
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(productPicture),
                    fit: BoxFit.contain
                  )
                ),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(color: productDiscount != "" ? Colors.green : Colors.transparent),
                      child: Text(
                        "$productDiscount OFF",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: productDiscount != "" ? Colors.white : Colors.transparent
                        ),
                      ),
                    ),
                ),
              ), 
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Rs $productPrice",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "$productName",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "$productQuantity",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.blueAccent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Icon(
                      Icons.add_shopping_cart,
                      size: 16.0,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
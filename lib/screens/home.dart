import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 30.0, left: 10.0),
        color: Colors.redAccent,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Marinara",
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato, Garlic",
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textDirection: TextDirection.ltr,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Margherita",
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato, Mazzarella, Basil, Secret",
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textDirection: TextDirection.ltr,
                  ),
                )
              ],
            ),
            OrderButton()
            //PizzaImageWidget()
          ],
        ),
      ),
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
          child: Text("Order your Pizza"),
          color: Colors.lightGreen,
          elevation: 5.0,
          onPressed: () {
            order(context);
          }),
    );
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}

//class PizzaImageWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    AssetImage pizzaAsset = AssetImage('images/vajra.jpg');
//    Image image = Image(image: pizzaAsset,width: 400.0,height: 400.0,);
//    return Container(child: image);
//  }
//}

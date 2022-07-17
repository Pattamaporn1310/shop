//import 'package:closet/cartmodel.dart';
import 'package:flutter/material.dart';
//import 'package:scoped_model/scoped_model.dart';
//import 'package:shopping/cartmodel.dart';
//import '../../shop/lib/cartmodel.dart';
//import '../../shop/lib/product.dart';

class CartPage extends StatefulWidget {
  List cart = [];
  List<double> p_cart = [];
  List id_shirt = [];
  //List count = ["a", "b", "c", "d"];

  CartPage({required this.cart, required this.p_cart, required this.id_shirt});

  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  double sum = 0;
  @override
  void initState() {
    cal();
    //distinct();
    //distinct1();
    super.initState();
  }

  void cal() {
    for (var i = 0; i < widget.p_cart.length; i++) {
      sum += widget.p_cart[i];
    }
  }

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("Cart"),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "Clear",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  widget.cart.clear();
                  sum = 0;
                });
              },
            )
          ],
        ),
        body: Container(
            padding: EdgeInsets.all(8.0),
            child: Column(children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: widget.cart.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(widget.cart[index].toString()),
                      subtitle: Text(widget.p_cart[index].toString()),
                      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              sum -= widget.p_cart[index];
                              widget.cart.removeAt(index);
                              widget.p_cart.removeAt(index);
                            });
                          },
                        ),
                        IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                sum += widget.p_cart[index];
                                widget.cart.add(widget.cart[index]);
                                widget.p_cart.add(widget.p_cart[index]);
                              });
                            }),
                      ]),
                    );
                  },
                ),
              ),
              Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Total: \$ " + sum.toString(),
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                      color: Colors.indigo[900],
                      textColor: Colors.white,
                      elevation: 0,
                      child: Text("BUY NOW"),
                      onPressed: () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('AlertDialog Title'),
                            content: const Text('AlertDialog description'),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel')),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                        child:
                        const Text('Show Dialog');
                      }))
            ])));
  }
}

class ShirtData {
  final String id;
  final String name;
  final double price;
  int qty;

  ShirtData(this.id, this.name, this.price, this.qty);
}

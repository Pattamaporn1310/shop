import 'package:closet/receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

import 'Detail.dart';
import 'cartmodel.dart';

class ShirtData {
  final String id;
  final String name;
  final double price;

  ShirtData(
    this.id,
    this.name,
    this.price,
  );
}

// List<ShirtData> shirtList = [
//   new ShirtData('1', 'GOLDIE', 800.00),
//   new ShirtData('2', 'HANES', 600.00),
//   new ShirtData('3', 'MADEWELL', 250.00),
//   new ShirtData('4', 'XKARLA', 520.00),
//   new ShirtData('5', 'MILO', 530.00),
// ];

class TrouserData {
  String name;
  double price;

  TrouserData(this.name, this.price);
}

// List<TrouserData> trouserList = [
//   new TrouserData('Blackberrys', 954.00),
//   new TrouserData('Parx', 899.00),
//   new TrouserData('Levi_s', 1552.00),
//   new TrouserData('Arrow', 2498.00),
//   new TrouserData('Reebok', 849.00),
// ];

class ShoeData {
  String name;
  double price;

  ShoeData(this.name, this.price);
}

// List<ShoeData> shoeList = [
//   new ShoeData('Nike', 1500.00),
//   new ShoeData('Adidas', 2000.00),
//   new ShoeData('Fila', 2200.00),
//   new ShoeData('Bata', 750.00),
//   new ShoeData('Puma', 900.00),
// ];

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List mycart = [];
  List<double> pricecart = [];
  List num = [];
  List _list = [];

  List<ShirtData> shirtList = [
    new ShirtData('1', 'GOLDIE', 800.00),
    new ShirtData('2', 'HANES', 600.00),
    new ShirtData('3', 'MADEWELL', 250.00),
    new ShirtData('4', 'XKARLA', 520.00),
    new ShirtData('5', 'MILO', 530.00),
  ];

  List<TrouserData> trouserList = [
    new TrouserData('Blackberrys', 954.00),
    new TrouserData('Parx', 899.00),
    new TrouserData('Levi_s', 1552.00),
    new TrouserData('Arrow', 2498.00),
    new TrouserData('Reebok', 849.00),
  ];

  List<ShoeData> shoeList = [
    new ShoeData('Nike', 1500.00),
    new ShoeData('Adidas', 2000.00),
    new ShoeData('Fila', 2200.00),
    new ShoeData('Bata', 750.00),
    new ShoeData('Puma', 900.00),
  ];
  int count = 0;
  void getcount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: ('Shirt'),
                  ),
                  Tab(
                    text: ('Troeser'),
                  ),
                  Tab(
                    text: ('Shoe'),
                  ),
                ],
              ),
              title: Text('Shopping closet'),
            ),
            body: TabBarView(children: [
              ListView.builder(
                  padding: const EdgeInsets.all(10),
                  shrinkWrap: true,
                  itemExtent: 100.0,
                  itemCount: shirtList.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                      title: Text(shirtList[index].name),
                      subtitle: Text("\$ ${shirtList[index].price}"),
                      leading: Container(
                        child: ProfilePicture(
                          name: shirtList[index].name[0],
                          radius: 31,
                          fontsize: 21,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          //getcount();
                          mycart.add(shirtList[index].name);
                          pricecart.add(shirtList[index].price);
                          num.add(index);
                          print(mycart);
                          print(pricecart);
                          //print(count);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: ((context) => Cart(
                          //             nameProduct_cart: shirtList[index]))));
                        },
                        icon: const Icon(Icons.add_shopping_cart_sharp),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    Detail(shirtData: shirtList[index]))));
                      },
                    ));
                  }),
              ListView.builder(
                padding: const EdgeInsets.all(10),
                itemExtent: 100.0,
                itemCount: trouserList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(trouserList[index].name),
                      subtitle: Text("\$ ${trouserList[index].price}"),
                      leading: Container(
                        child: ProfilePicture(
                          name: trouserList[index].name[0],
                          radius: 31,
                          fontsize: 21,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            mycart.add(trouserList[index].name);
                            pricecart.add(trouserList[index].price);
                            print(mycart);
                          },
                          icon: const Icon(Icons.add_shopping_cart_sharp)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    Deail1(trouserData: trouserList[index]))));
                      },
                    ),
                  );
                },
              ),
              ListView.builder(
                padding: const EdgeInsets.all(10),
                itemExtent: 100.0,
                itemCount: shoeList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(shoeList[index].name),
                      subtitle: Text("\$ ${shoeList[index].price}"),
                      leading: Container(
                        child: ProfilePicture(
                          name: shoeList[index].name[0],
                          radius: 31,
                          fontsize: 21,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            mycart.add(shoeList[index].name);
                            pricecart.add(shoeList[index].price);

                            print(mycart);
                            // setState(() {
                            //   _list.add(shoeList[index]);
                            // });
                          },
                          icon: const Icon(Icons.add_shopping_cart_sharp)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    Deail2(shoeData: shoeList[index]))));
                      },
                    ),
                  );
                },
              ),
            ]),
            bottomSheet: Padding(
                padding: const EdgeInsets.all(10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  FlatButton(
                    child: Text('Add'),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => CartPage(
                                    cart: mycart,
                                    p_cart: pricecart,
                                    id_shirt: num,
                                  ))));
                    },
                  )
                ]))));
  }
}

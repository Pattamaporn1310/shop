//import 'dart:ffi';

import 'package:closet/Detail.dart';
import 'package:closet/product.dart';
//import '../../closet/lib/receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
//import 'package:provider/provider.dart';
//import 'product.dart';
//import 'Detail.dart';
//import 'receipt.dart';
//import 'models.dart/counter_model.dart';
//import 'package:scoped_model/scoped_model.dart';
import 'cartmodel.dart';

// void main() => runApp(MyApp(
//       model: CartModel(),
//     ));

// class MyApp extends StatelessWidget {
//   final CartModel model;

//   const MyApp({Key? key, required this.model}) : super(key: key);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
      //routes: {'/cart': (context) => CartPage()},
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
  
//   @override
//   Widget build(BuildContext context) {
//     return 
    
    
    
    //DefaultTabController(
        // length: 3,
        // child: Scaffold(
        //   appBar: AppBar(
        //     bottom: const TabBar(
        //       tabs: [
        //         Tab(
        //           text: ('Shirt'),
        //         ),
        //         Tab(
        //           text: ('Troeser'),
        //         ),
        //         Tab(
        //           text: ('Shoe'),
        //         ),
        //       ],
        //     ),
        //     title: Text('Shopping closet'),
        //   ),
        //   body: TabBarView(
        //     children: [
        //       ListView.builder(
        //         padding: const EdgeInsets.all(10),
        //         shrinkWrap: true,
        //         itemExtent: 100.0,
        //         itemCount: shirtList.length,
        //         itemBuilder: (context, index) {
        //           return Card(
        //               child: ListTile(
        //             title: Text(shirtList[index].name),
        //             subtitle: Text("\$ ${shirtList[index].price}"),
        //             leading: Container(
        //               child: ProfilePicture(
        //                 name: shirtList[index].name[0],
        //                 radius: 31,
        //                 fontsize: 21,
        //               ),
        //             ),
        //             trailing: IconButton(
        //               onPressed: () {
        //                 Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: ((context) =>
        //                             Cart(nameProduct_cart: shirtList[index]))));
        //               },
        //               icon: const Icon(Icons.add_shopping_cart_sharp),
        //             ),
        //             onTap: () {
        //               Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: ((context) =>
        //                           Detail(shirtData: shirtList[index]))));
        //             },
        //           ));
        //         },
        //       ),
        //       ListView.builder(
        //         padding: const EdgeInsets.all(10),
        //         itemExtent: 100.0,
        //         itemCount: trouserList.length,
        //         itemBuilder: (context, index) {
        //           return Card(
        //             child: ListTile(
        //               title: Text(trouserList[index].name),
        //               subtitle: Text("\$ ${trouserList[index].price}"),
        //               leading: Container(
        //                 child: ProfilePicture(
        //                   name: trouserList[index].name[0],
        //                   radius: 31,
        //                   fontsize: 21,
        //                 ),
        //               ),
        //               trailing: IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(Icons.add_shopping_cart_sharp)),
        //               onTap: () {
        //                 Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: ((context) =>
        //                             Deail1(trouserData: trouserList[index]))));
        //               },
        //             ),
        //           );
        //         },
        //       ),
        //       ListView.builder(
        //         padding: const EdgeInsets.all(10),
        //         itemExtent: 100.0,
        //         itemCount: shoeList.length,
        //         itemBuilder: (context, index) {
        //           return Card(
        //             child: ListTile(
        //               title: Text(shoeList[index].name),
        //               subtitle: Text("\$ ${shoeList[index].price}"),
        //               leading: Container(
        //                 child: ProfilePicture(
        //                   name: shoeList[index].name[0],
        //                   radius: 31,
        //                   fontsize: 21,
        //                 ),
        //               ),
        //               trailing: IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(Icons.add_shopping_cart_sharp)),
        //               onTap: () {
        //                 Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: ((context) =>
        //                             Deail2(shoeData: shoeList[index]))));
        //               },
        //             ),
        //           );
        //         },
        //       ),
        //     ],
        //   ),
       
//   }
// }

// class Count extends StatelessWidget {
//   const Count({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text('${context.watch<Counter>().count}',
//         key: const Key('counterState'),
//         style: Theme.of(context).textTheme.headline4);
//   }
// }
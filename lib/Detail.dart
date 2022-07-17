//import 'package:closet/shirt.dart';
import 'package:closet/product.dart';
import 'package:flutter/material.dart';
import 'product.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
//import 'package:passing_data/FruitDataModel.dart';

class Detail extends StatelessWidget {
  final ShirtData shirtData;

  Detail({Key? key, required this.shirtData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(shirtData.name),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Center(
                child: ProfilePicture(
                  name: shirtData.name,
                  radius: 31,
                  fontsize: 21,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            )
          ],
        ));
  }
}

class Deail1 extends StatelessWidget {
  final TrouserData trouserData;
  const Deail1({Key? key, required this.trouserData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(trouserData.name),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: ProfilePicture(
                name: trouserData.name,
                radius: 31,
                fontsize: 21,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          )
        ],
      ),
    );
  }
}

class Deail2 extends StatelessWidget {
  final ShoeData shoeData;
  const Deail2({Key? key, required this.shoeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shoeData.name),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: ProfilePicture(
                name: shoeData.name,
                radius: 31,
                fontsize: 21,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          )
        ],
      ),
    );
  }
}

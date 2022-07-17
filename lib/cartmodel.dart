// import 'package:closet/product.dart';
// import 'package:provider/provider.dart';
//import 'package:flutter/material.dart';

// // สร้างข้อมูล app state ชื่อ Counter ใช้งานร่วมกับ ChangeNotifier
// class Counter with ChangeNotifier {
//   int _count = 0; // กำหนดชนิดข้อมูล และค่าเริ่มต้น

//   // กำหนด getter คือค่าจากตัวแปร _count
//   int get count => _count;

//   // กำหนดคำสั่ง และการทำงาน
//   void increment() {
//     _count++; // เพิ่มจำนวน
//     notifyListeners(); // แจ้งเตือนการเปลี่ยนแปลงข้อมูล
//   }

//   // กำหนดคำสั่ง และการทำงาน
//   void reset() {
//     _count = 0; // รีเซ็ตค่า
//     notifyListeners(); // แจ้งเตือนการเปลี่ยนแปลงข้อมูล
//   }
// }
import 'package:scoped_model/scoped_model.dart';
//import 'package:quantity/quantity.dart';

class CartModel extends Model {
  List<ShirtData> cart = [];
  double totalCartValue = 0;
  int get total => cart.length;

  void addShirtData(ShirtData) {
    int index = cart.indexWhere((i) => i.id == ShirtData.id);
    print(index);
    if (index != -1)
      updateProduct(ShirtData, ShirtData.qty + 1);
    else {
      cart.add(ShirtData);
      calculateTotal();
    }
  }

  void removeProduct(ShirtData) {
    int index = cart.indexWhere((i) => i.id == ShirtData.id);
    cart[index].qty = 1;
    cart.removeWhere((item) => item.id == ShirtData.id);
    calculateTotal();
  }

  void updateProduct(ShirtData, qty) {
    int index = cart.indexWhere((i) => i.id == ShirtData.id);
    cart[index].qty = qty;
    if (cart[index].qty == 0) removeProduct(ShirtData);

    calculateTotal();
  }

  void clearCart() {
    cart.forEach((f) => f.qty = 1);
    cart = [];
  }

  void calculateTotal() {
    totalCartValue = 0;
    cart.forEach((f) {
      totalCartValue += f.price * f.qty;
    });
  }
}

class ShopData {
  List<ShirtData> shopitems;

  ShopData(this.shopitems);

  void addPoduct(ShirtData p) {
    shopitems.add(p);
  }

  void removePoduct(ShirtData p) {
    shopitems.add(p);
  }
}

class ShirtData {
  final String id;
  final String name;
  final double price;
  int qty;

  ShirtData(this.id, this.name, this.price, this.qty);
}

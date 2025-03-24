import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [

    //[itemName, itemPrice, imagePath, color]
    ["Bike", "250000", "lib/images/bike.png", Colors.green],
    ["Car", "2000000", "lib/images/car.webp", Colors.yellow],
    ["Cycle", "80000", "lib/images/cycle.png", Colors.brown],
    ["MiniBus", "70000", "lib/images/minibus.png", Colors.cyan],
  ];

  //List
  List _cartItems = [];
  get cartItems => _cartItems;
  get shopItems => _shopItems;

  //add
  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculatePrice(){
    double totalPrice = 0;
    for(int i = 0; i < _cartItems.length; i++){
      /*double price = double.parse(_cartItems[i][1].replaceAll(',', ''));
      totalPrice += price;*/
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }


}

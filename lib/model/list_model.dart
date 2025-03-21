import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [

    //[itemName, itemPrice, imagePath, color]
    ["Bike", "2,50,000", "lib/images/bike.png", Colors.green],
    ["Car", "20,00,000", "lib/images/car.webp", Colors.yellow],
    ["Cycle", "80,000", "lib/images/cycle.png", Colors.brown],
    ["MiniBus", "70,000", "lib/images/minibus.png", Colors.cyan],
  ];

  get shopItems => _shopItems;

}

import 'package:flutter/material.dart';


class CategoryItemList extends StatelessWidget {

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  CategoryItemList({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.all(12.0),
      child: Container(

        padding: const EdgeInsets.all(12),

        decoration: BoxDecoration(
            color: color[100],
            borderRadius: BorderRadius.circular(15)
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            Image.asset(
              imagePath,
              height: 64,
            ),


            Text(
              itemName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              )
            ),


            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                '\$' + itemPrice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

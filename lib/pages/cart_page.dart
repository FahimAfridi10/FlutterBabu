import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/pages/pay_page.dart';
import '../model/list_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My CartList')),

      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [

              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(

                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(

                          leading: Image.asset(
                            value.cartItems[index][2],
                            height: 36,
                          ),

                          title: Text(
                            value.cartItems[index][0],
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),

                          subtitle: Text(
                            '৳' + value.cartItems[index][1],
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),

                          trailing: IconButton(
                            onPressed:
                                () => Provider.of<CartModel>(
                                  context,
                                  listen: false,
                                ).removeItemFromCart(index),
                            icon: Icon(Icons.delete_forever),
                          ),

                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: BorderRadius.circular(12),
                  ),

                  padding: EdgeInsets.all(24),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            'Total Price: ',
                            style: const TextStyle(color: Colors.white),
                          ),

                          const SizedBox(height: 4),

                          Text(
                            '৳${value.calculatePrice()}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),

                        ],
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white),
                        ),

                        padding: EdgeInsets.all(8),

                        child: Row(
                          children: [
                            GestureDetector(
                              onTap:
                                  () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const PayPage();
                                  },
                                ),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    'Pay Now',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(Icons.arrow_forward_ios, color: Colors.white),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

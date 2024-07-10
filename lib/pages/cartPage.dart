import 'package:e_commernce/components/cart_item.dart';
import 'package:e_commernce/models/cart.dart';
import 'package:e_commernce/models/heels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<cart>(
        builder: (context, value, child) =>  Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // heading
                  Text(
                    "My Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.getHeelsCart().length,
                      itemBuilder: (context, index) {
                        heels individualHeels = value.getHeelsCart()[index];
                        // Return cart item
                        return cartItem(Heels: individualHeels);
                      },
                    )
                  ),
                ],
              ),
            ));
  }
}

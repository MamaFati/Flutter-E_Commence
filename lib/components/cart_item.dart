import 'package:e_commernce/models/cart.dart';
import 'package:e_commernce/models/heels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartItem extends StatefulWidget {
  heels Heels;
  cartItem({
    super.key,
    required this.Heels,
  });

  @override
  State<cartItem> createState() => _cartItemState();
}

class _cartItemState extends State<cartItem> {
  void removeItemFromCart() {
    Provider.of<cart>(context,listen: false).removeItemFromCart(widget.Heels); 
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.Heels.ImagePath),
        title: Text(widget.Heels.name),
        subtitle: Text(widget.Heels.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}

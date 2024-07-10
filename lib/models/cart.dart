import 'package:e_commernce/models/heels.dart';
import 'package:flutter/material.dart';

class cart extends ChangeNotifier {
  // List of shoes for sale
  List<heels> heelsShop = [
    heels(
        name: 'help Me Grow',
        price: '300',
        ImagePath: 'lib/images/stiletto-heels-two-beauty-platform.jpg',
        Description: "DREAM PAIRS Women's Double Bowknots Crystal Sandals Clear Slingback Heels Square Toe Shoes for Party Wedding"),
    heels(
        name: 'sister girl',
        price: '400',
        ImagePath: 'lib/images/4549377775_107751685.jpg',
        Description: "JOY IN LOVE Women's Pumps Shoes 3.5' High Heels Pointy Toe Stiletto Pumps"),
    heels(
        name: 'Dew',
        price: '700',
        ImagePath: 'lib/images/image2.jpg',
        Description: "Elisabet Tang Women Pumps, Pointed Toe High Heel 4.7 inch/12cm Party Stiletto Heels"),
    heels(
        name: 'sister girl',
        price: '500',
        ImagePath: 'lib/images/4549377775_107751685.jpg',
        Description: "DREAM PAIRS Lace Up High Heels for Women Sexy Open Square Toe Heels Fashion"),
  ];

  // list of items the user put in the cart
  List<heels> userCart = [];

  // get a list of heels
  List<heels> getHeelsList() {
    return heelsShop;
  }

  // get cart
  List<heels> getHeelsCart() {
    return userCart;
  }
   // adding items to cart
  void addItemToCart(heels Heels){
    userCart.add(Heels);
    notifyListeners();
  }
  // remove items from cart
  void removeItemFromCart(heels Heels){
    userCart.remove(Heels);
    notifyListeners();
  }
}

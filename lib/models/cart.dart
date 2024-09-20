import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Kyrie",
      price: "236",
      imagePath: "lib/images/2.png",
      description: "the forward-thinking design of this latest signature shoe.",
    ),
    Shoe(
      name: "Zoom Freak",
      price: "250",
      imagePath: "lib/images/4.png",
      description: "the forward-thinking design of this latest signature shoe.",
    )
  ];

  // list of items for sale
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

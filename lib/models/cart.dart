import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes that are for sale
  List<Shoe> shoesShop = [
    Shoe(
      name: 'Air Deledon',
      price: "160,000",
      imagePath: 'lib/images/Air-deldon.png',
      description: 'Built to break barriers — made for all athletes.',
    ),

    Shoe(
      name: 'G.T. Cut 3',
      price: "115,000",
      imagePath: 'lib/images/GT.png',
      description: 'Engineered for explosive guards, ',
    ),

    Shoe(
      name: 'Tatum 3 “Tie-Dye”',
      price: '110,000',
      imagePath: 'lib/images/Tatum-3-tie-dye2.png',
      description: ' Unleash your creativity with the Tatum 3 "Tie-Dye".',
    ),

    Shoe(
      name: 'Tatum 3',
      price: "110,000",
      imagePath: 'lib/images/Tatum-3-white.png',
      description: 'Minimal, clean and powerful... The Jordan Tatum 3.',
    ),

    Shoe(
      name: 'Zoom Freak 4',
      price: "130,000",
      imagePath: 'lib/images/Zoom-freek-4.jpg',
      description: 'Dominate like Giannis in the Nike Zoom Freak 4.',
    ),
  ];

  //list of shoes in the cart
  List<Shoe> userCart = [];

  //get list of items for sale
  List<Shoe> getShoesList() {
    return shoesShop;
  }

  //get list of items in the cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners(); // Notify listeners to update the UI
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners(); // Notify listeners to update the UI
  }
}

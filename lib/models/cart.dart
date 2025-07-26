import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes that are for sale
  List<Shoe> shoesShop = [
    Shoe(
      name: 'Air Deledon',
      price: "160,000",
      imagePath: 'lib/images/air_deledon.png',
      description:
          'Built to break barriers, the Nike Air Deldon is Elena Delle Donne’s signature shoe — made for all athletes. It features FlyEase technology for easy entry, a secure mid-top collar, and full-length Air cushioning for premium comfort and court-ready responsiveness. ',
    ),

    Shoe(
      name: 'G.T. Cut 3',
      price: "115,000",
      imagePath: 'lib/images/aG.T.+Cut+3.png',
      description:
          'Engineered for explosive guards, the Nike G.T. Cut 3 delivers ultra-light responsiveness and quick-stop traction. Featuring ZoomX foam and a low-profile design, this shoe gives you unmatched energy return and grip — perfect for slicing through defenders and controlling the court with sharp cuts and shifts.',
    ),

    Shoe(
      name: 'Jordan Tatum 3 “Tie-Dye”',
      price: '110,000',
      imagePath: 'lib/images/Tatum-3-tie-dye.png',
      description:
          ' Unleash your creative side with the Jordan Tatum 3 "Tie-Dye". Inspired by Jayson Tatum’s unique flair, this colorway combines lightweight mesh uppers with eye-catching swirls and responsive Zoom cushioning.',
    ),

    Shoe(
      name: 'Jordan Tatum 3',
      price: "110,000",
      imagePath: 'lib/images/Tatum-3-white.png',
      description:
          'Minimal, clean, and powerful — the Jordan Tatum 3 "White" brings subtle elegance to the hardwood. Designed for versatile play, it features a breathable upper, Zoom Air cushioning in the forefoot, and a herringbone outsole for stable footwork. A go-to for any baller who keeps it classic.',
    ),

    Shoe(
      name: 'Zoom Freak 4',
      price: "130,000",
      imagePath: 'lib/images/Zoom freek 4.png',
      description:
          'Dominate like Giannis in the Nike Zoom Freak 4. With dual Zoom Air units in the forefoot and an ultra-light midsole, this shoe offers explosive energy return and control. The bold design reflects the Freak’s on-court chaos — made for power moves, fast breaks, and above-the-rim action.',
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
  }
}

import 'package:flutter/material.dart';

import 'shop.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'The forward-thinking design of his latest signature shoe. ',
      imagePath: 'lib/images/c3.png',
    ),
    Shoe(
      name: 'football shoes',
      price: '249',
      imagePath: 'lib/images/c4.png',
      description:
          'Nike Junior Zoom Mercurial Superfly 9 Academy FG/MG Football shoes fo  young and old children',
    ),
    Shoe(
      name: 'Transparent',
      price: '209',
      imagePath: 'lib/images/c66.jpeg',
      description:
          'Strong, beautiful-looking shoes, also for running. Buy them now',
    ),
    Shoe(
      name: ' Nike Running',
      price: '249',
      imagePath: 'lib/images/c7.jpeg',
      description:
          'Black, beautiful, and shiny. Buy it now and dont miss the beat',
    )
  ];
  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

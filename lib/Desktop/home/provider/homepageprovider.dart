import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  List<String> image = [];
  HomePageProvider() {
    getImage();
  }

  void getImage() {
    for (int i = 0; i < 10; i++) {
      image.add('https://picsum.photos/id/${1000 + i}/800/400');
    }
    notifyListeners();
  }
}

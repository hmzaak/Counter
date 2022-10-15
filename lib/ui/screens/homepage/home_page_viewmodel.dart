import 'dart:math';

import 'package:counter/core/utils/colors/background_colors.dart';
import 'package:flutter/material.dart';

class HomePageViewModel extends ChangeNotifier {
  Random random = Random();
  int previousIndex = 0;
  int currentIndex = 0;
  int count = 0;
  Color? scafoldColor;

  // Get random color for scafold from backgroundColors list
  getRandomColor() {
    while (currentIndex == previousIndex) {
      currentIndex = random.nextInt(10);
    }
    previousIndex = currentIndex;
    scafoldColor = backgroundColors[currentIndex];
    notifyListeners();
  }

  // Increment counter accordingly -- Max count 10000
  void incrementCount() {
    if (count < 10) {
      count++;
      if (count == 10) {
        getRandomColor();
      }
    } else if (count >= 10 && count < 100) {
      count += 10;
      if (count == 100) {
        getRandomColor();
      }
    } else if (count >= 100 && count < 1000) {
      count += 100;
      if (count == 1000) {
        getRandomColor();
      }
    } else if (count >= 1000 && count < 10000) {
      count += 1000;
      if (count == 10000) {
        getRandomColor();
      }
    } else {
      count = 0;
    }
    notifyListeners();
  }
}

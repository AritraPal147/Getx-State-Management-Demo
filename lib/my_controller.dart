import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller class
class MyController extends GetxController {
  // .obs is used for making the variable accessible in the ui layer
  var books = 0.obs;
  var pens = 0.obs;

  // sum variable that stores sum of number of books and pens
  int get sum => books.value + pens.value;

  // Function to increase value of books
  void incrementBooks() => books.value++;

  // Function to decrease value of books
  void decrementBooks() {
    if (books.value <= 0) {
      Get.snackbar(
        'Buying Books',
        'Cannot be less than zero',
        icon: const Icon(Icons.alarm),
        isDismissible: true,
        duration: const Duration(
          seconds: 3,
        ),
      );
    } else {
      books.value--;
    }
  }

  // Function to increase value of pens
  void incrementPens() => pens.value++;

  // Function to decrease value of pens
  void decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar(
        'Buying Pens',
        'Cannot be less than zero',
        icon: const Icon(Icons.alarm),
        isDismissible: true,
        duration: const Duration(
          seconds: 3,
        ),
      );
    } else {
      pens.value--;
    }
  }
}

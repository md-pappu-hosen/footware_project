import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:footware/model/product/product.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;
  @override
  void onInit() {
    productCollection = firestore.collection('products');
    super.onInit();
  }

  addProduct() {
    try {
      DocumentReference doc = productCollection.doc();
      Product product = Product(
        id: doc.id,
        name: 'test name from flutter',
        description: 'test description from flutter',
        category: 'boots',
        image: 'image url',
        price: 500,
        brand: 'adidas',
        offer: true,
      );
      final productJson = product.toJson();
      doc.set(productJson);
      Get.snackbar(
        'success',
        'product add successfully',
        colorText: Colors.greenAccent,
      );
    } on Exception catch (e) {
      Get.snackbar('error', 'something went wrong', colorText: Colors.red);
    }
  }
}

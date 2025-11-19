import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:footware/controller/home_controller.dart';
import 'package:footware/pages/add_product_page.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (ctrl) {
        return Scaffold(
          appBar: AppBar(title: Text('Footware Admin')),
          body: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, Index) {
              return ListTile(
                title: Text('Title'),
                subtitle: Text('price : 299'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(AddProductPage());
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}

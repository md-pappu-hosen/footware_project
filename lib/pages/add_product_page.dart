import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:footware/controller/home_controller.dart';
import 'package:footware/widgets/dropdown_btn.dart';
import 'package:get/get.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (ctrl) {
        return Scaffold(
          appBar: AppBar(title: Text('Add Product')),
          body: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Add New Product',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text('Product Name'),
                      hintText: 'Enter Your Product Nmae',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text('Product Description'),
                      hintText: 'Enter Product Description',
                    ),
                    maxLines: 5,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text('Image url'),
                      hintText: 'Enter your Image url',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text('Product Price'),
                      hintText: 'Enter your price',
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: DropdownBtn(
                          items: ['cat1', 'cat2', 'cat3', 'cat4'],
                          seletedItemText: 'Catagory',
                          onselected: (selectedvalue) {},
                        ),
                      ),
                      Flexible(
                        child: DropdownBtn(
                          items: ['brand1', 'brand2', 'brand3', 'brand4'],
                          seletedItemText: 'Brand',
                          onselected: (selectedvalue) {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('offer product ?'),
                  DropdownBtn(
                    items: ['true', 'false'],
                    seletedItemText: 'Offers',
                    onselected: (selectedvalue) {},
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text('Add Product'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

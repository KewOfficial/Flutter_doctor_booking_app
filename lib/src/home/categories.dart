import 'package:doctors_booking_app/src/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  final HomeController controller = Get.find();

  Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 150,
        color: Colors.green,
        child: ListView.builder(
          itemCount: controller.categories.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.categories[index]),
            );
          },
        ),
      ),
    );
  }
}

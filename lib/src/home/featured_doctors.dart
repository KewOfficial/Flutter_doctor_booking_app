
import 'package:doctors_booking_app/src/home/home_controller.dart';
import 'package:doctors_booking_app/src/widgets/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeaturedDoctors extends StatelessWidget {
  final HomeController controller = Get.find();

  FeaturedDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 150,
        color: Colors.blue,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.featuredDoctors.length,
          itemBuilder: (context, index) {
            final doctor = controller.featuredDoctors[index];
            return DoctorCard(
              doctor: doctor.name,
              profileImageAsset: doctor.profileImageAsset,
            );
          },
        ),
      ),
    );
  }
}
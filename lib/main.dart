import 'package:doctors_booking_app/src/home/doctor_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:doctors_booking_app/src/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:doctors_booking_app/src/home/more_screen.dart';


void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Doctor Booking App',
      theme: ThemeData(
        primarySwatch:  Colors.blue,
      ),
      home:  HomeScreen(),
       initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/more', page: () => MoreScreen()),
        GetPage(name: '/doctorDetails', page: () => const DoctorDetailsScreen(),)
        ]
    );
  }
}

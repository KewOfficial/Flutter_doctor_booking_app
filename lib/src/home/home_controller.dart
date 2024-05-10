
import 'package:get/get.dart';
import 'doctor_class.dart'; 

class HomeController extends GetxController {
  
  var featuredDoctors = <Doctor>[].obs;
  var categories = <String>[].obs;

  @override
  void onInit() {
    fetchFeaturedDoctors();
    fetchCategories();
    super.onInit();
  }

void fetchFeaturedDoctors() {
  featuredDoctors.assignAll([
    Doctor(
      name: 'Dr. David Makosi',
      specialization: 'Cardiologist',
      rating: 4.5,
      profileImageAsset: ('assets/doctor_profiles/doctor_two.jpg'),
    ),
    Doctor(
      name: 'Dr. Ezra Malagi',
      specialization: 'Dermatologist',
      rating: 4.2,
      profileImageAsset: 'assets/doctor_profiles/doctor_one.jpg',
    ),
      Doctor(
      name: 'Dr. Ezra Malagi',
      specialization: 'Dermatologist',
      rating: 4.2,
      profileImageAsset: 'assets/doctor_profiles/doctor_one.jpg',
    ),
   
  ]);
}


  void fetchCategories() {
    categories.assignAll(['Consultation', 'Heart', 'Dental', '']);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import 'more_screen.dart';
class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  HomeScreen({Key? key}) : super(key: key);

Widget categoryContainer({required IconData icon, required String label}) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color.fromARGB(255, 252, 186, 3),
    ),
    child: Column(
      children: [
        Icon(icon, size: 30, color: Colors.black),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black), 
        ),
      ],
    ),
  );
}


  Widget doctorContainer(
      {required String doctorName,
      required String specialization,
      required double rating}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.blue),
      ),
      child: Container(
        width: 175,
        height: 200,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue.withOpacity(0.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage('assets/doctor_profiles/doctor_two.jpg'),
            ),
            const SizedBox(height: 8),
            Text(
              doctorName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                specialization,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
            const SizedBox(height: 4),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star_border, color: Colors.yellow),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Rating: $rating',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Color.fromARGB(255, 40, 219, 85),
      appBar: AppBar(
        title: const Text(
          'Hello, Kew!',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
       backgroundColor:Color.fromARGB(255, 252, 186, 3),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 36, 68, 212)),
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 173, 216, 230),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search, color: Color.fromARGB(255, 37, 3, 233)),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Featured Doctors',
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  ElevatedButton(
                    onPressed: () {
                     Get.to(()=>MoreScreen());
                    },
                    child: const Text(
                      'See More',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  doctorContainer(
                    doctorName: 'Dr. David Makosi',
                    specialization: 'Cardiologist',
                    rating: 4.5,
                  ),
                  doctorContainer(
                    doctorName: 'Dr Ezra Malagi',
                    specialization: 'Dermatologist',
                    rating: 4.2,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'What Do You Need?',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    categoryContainer(
                        icon: Icons.local_hospital, label: 'Consultation'),
                    categoryContainer(icon: Icons.flare, label: 'Lab Work'),
                    categoryContainer(icon: Icons.person, label: 'Doctor'),
                    categoryContainer(
                        icon: Icons.healing, label: 'Medications'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

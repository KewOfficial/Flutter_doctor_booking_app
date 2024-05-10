import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreScreen extends StatelessWidget{
  Widget buildDoctorTile({
    required String doctorName,
    required String specialization,
    required double rating
  }){
     return InkResponse(
      onTap: () {
       Get.toNamed('/doctorDetails') ;
      },
      child: Card(
        elevation: 3.0,
        margin:const EdgeInsets.symmetric(vertical:8.0, horizontal: 16.0),
        color: Colors.lightBlue,
        child: ListTile(
          contentPadding: const EdgeInsets.all(16.0),
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/doctor_profiles/doctor_two.jpg'),
          ),
          title: const Text('Dr. John Cena', style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black
          ),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(height: 8.0,),
              Text('Specialization: $specialization',
              style: const TextStyle(fontSize:14, color: Colors.black),
              ),
              Text('Rating: $rating', 
              style: const TextStyle(fontSize: 14.0, color: Colors.black),
              )
            ],
          ),
        ),

      ),
     );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightGreen,
appBar: AppBar(
  
  title: const Text('All Doctors', style: TextStyle(
    fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black
  ),),
  backgroundColor: Colors.lightBlue,
),
body: Column(
  children: [
    Padding(padding: const EdgeInsets.all(16.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search Doctors',
        prefixIcon: const Icon(Icons.search),
        fillColor: Colors.white,
                filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
    ),
    ),
    Expanded(child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index){
return buildDoctorTile(
  doctorName: 'Dr. Kihungwe $index',
  specialization: 'Cardiologist',
  rating: 4.2,
);
    }))
  ],
),
    );
  }
}
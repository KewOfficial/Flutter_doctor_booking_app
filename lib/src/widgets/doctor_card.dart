
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctor;
  final String profileImageAsset; 

  DoctorCard({required this.doctor, required this.profileImageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const  CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/doctor_profiles/doctor_two.jpg'), 
          ),
          const SizedBox(height: 8),
          Text(
            'Dr. $doctor',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          const Text(
            'Specialization',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.orange),
              Icon(Icons.star, color: Colors.orange),
              Icon(Icons.star, color: Colors.orange),
              Icon(Icons.star, color: Colors.orange),
              Icon(Icons.star_border, color: Colors.orange),
            ],
          ),
        ],
      ),
    );
  }
}

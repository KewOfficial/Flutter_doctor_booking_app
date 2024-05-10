import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  String doctorName= 'Dr. John Cena';
  String speciality ='Cardiologist';
  int ratingsCount = 50;
  int patientCount = 500;
  String experience ='8 yrs+';
  double averageRating = 4.5;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor:const Color.fromARGB(255, 40, 219, 85),
      appBar: AppBar(
        title: const Text('Doctor Details'),
        backgroundColor: const Color.fromARGB(255, 252, 186, 3),
      ),
      body: SingleChildScrollView(
       child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const   CircleAvatar(
              radius: 80,
              backgroundImage:
                  AssetImage('assets/doctor_profiles/doctor_two.jpg'),
            ), 
           const  SizedBox(height: 16.0,),
           Text(doctorName, 
            style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black
            ),
            ),
           Text(speciality, 
            style: const TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i=0; i<3; i++)
               const Icon(Icons.star, color:Colors.amber),
               Text('($ratingsCount)',
               style:const TextStyle(fontSize: 16.0, color: Colors.white),
               )
              ],
            ),
          const  SizedBox(height: 10,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ 
              Column(
                children: [
                const  Text('Patients',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text('$patientCount', style: const TextStyle(fontSize: 16.0, color:Colors.white),)

                ],
              ),
             
              Column(
                children: [
                  const Text('Experience', 
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
                  ), 
                  Text( experience, 
                  style:const TextStyle(fontSize: 16.0, color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  const Text('Ratings', style: TextStyle
                  (fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
               Text('$averageRating',
               style:const  TextStyle(fontSize: 16.0, color: Colors.white),
               )
                ],
              )
            ],
           ),
           const SizedBox(height:10.0),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){

                },
                child: const Text('About',
                style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              InkWell(
                onTap: () {
                  
                },
                child: const Text('Address',
                style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold, color: Colors.black),
                ),
              ),
              InkWell(
                onTap: (){

                },
                child:const Text('Ratings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
              )
            ],
           ),
            ElevatedButton(
        onPressed: (){

        },
        child: const Text('Book An Appointment',
        style: TextStyle(color: Colors.black),),
      )
          ],
        ),
        
        ),
        
      ),
     
    );
  }
}
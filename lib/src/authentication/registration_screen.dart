import 'package:flutter/material.dart';


class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
body:Padding(
  padding: const EdgeInsets.all(16.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextFormField(
        controller: emailController,
        decoration:InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          labelText: 'Email'
        ),
      ),
     const SizedBox(height: 16.0,),
      TextFormField(
        controller: passwordController,
        decoration:InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          labelText: 'password'
        ),
        obscureText: true,
      ),
     const SizedBox(height: 20,),
     ElevatedButton(onPressed: (){

     }, 
     child: const Text('Register'))
    ],
  ),
),
    );
  }
}
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
LoginScreen({super.key});
final TextEditingController emailController= TextEditingController();
final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text('Login'),
),
body: Padding(
  padding: const EdgeInsets.all(16.0),
  child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextFormField(
        controller: emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
       labelText: 'Email'
      ),
      ),
      const SizedBox(height: 20,),
      TextFormField(
        controller: passwordController,
        decoration: InputDecoration(
            
          labelText: 'password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        
        ),
         obscureText:true, 
      )
    ],
  )
  ),
    );
  }
}
//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:images/view/signup.dart';

Widget Custom_TextField(){
  return Padding(
    padding: const EdgeInsets.all(40.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center, 
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TextField(
          
          //obscureText: type == "password" ? true : false,
          //controller: controller,
  decoration: InputDecoration(
        hintText: 'Enter Your Email',
        border: OutlineInputBorder(),
  //labelText: type,
  ),
        ),
    const SizedBox(height: 20,),
    
         const TextField(
          
          //obscureText: type == "password" ? true : false,
          //controller: controller,
  decoration: InputDecoration(
        hintText: 'Enter Your Password',
        border: OutlineInputBorder(),
  //labelText: type,
  ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text('Do You Have Already account ?'),
            TextButton(onPressed: (){
  //Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
            }, child: const Text('SignUp')),
          ],
        )
      ],
    ),
  );
}

// SIGN UP ---------> Email


Widget Custom_Signup (){
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center, 
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      TextField(
decoration: InputDecoration(
      hintText: 'Enter Your Passoword',
      border: OutlineInputBorder(),
      )
      ),
      SizedBox(height: 20,),
      TextField(
decoration: InputDecoration(
      hintText: 'Enter Your Passoword',
      border: OutlineInputBorder(),
      )
      ),
    ],
  );
}
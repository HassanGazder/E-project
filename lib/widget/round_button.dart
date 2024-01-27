import 'package:flutter/material.dart';

class Round_button extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const Round_button({super.key , required this.title , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: Color(0xffF83758),
        borderRadius: BorderRadius.circular(10),
        
      ),
      child: Center(child: Text(title , style: TextStyle(color: Colors.white),)),
    ),
    );
  }
}
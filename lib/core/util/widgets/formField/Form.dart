import 'package:flutter/material.dart';

class MyFormLogin extends StatelessWidget {
  final String label;
  final String validation;
  final double radius;
  final TextInputType type;
  final TextEditingController controller;
  final bool isPassword;
  final Color color;
  const MyFormLogin({
    Key? key,
    this.color = Colors.grey,
    required this.label,
    required this.validation,
    required this.type,
    required this.controller,
    this.radius = 15.0,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0,left: 20),
      child: Container(
        height: 47,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white54),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow:const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(0,3))
          ],),
        child: TextFormField(
          obscureText: isPassword,
          controller: controller,
          keyboardType: type,
          validator: (value) {
            if (value!.isEmpty) {
              return validation;
            }

            return null;
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            hintText: label,
            hintStyle: TextStyle(
              color: color,
            )
          ),
        ),
      ),
    );
  }
}
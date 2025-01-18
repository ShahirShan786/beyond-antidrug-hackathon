import 'package:beyond/core/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFeild extends StatelessWidget {
  final String hintLabel;
  final bool obsqureText; // Made non-nullable
  final TextEditingController controller;
  final Widget? suffixWidget;
  final Function() onpressed;

  const CustomTextFeild({
    super.key,
    required this.hintLabel,
    this.obsqureText = false, // Provide a default value
    this.suffixWidget,
    required this.controller,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextFormField(
          controller: controller,
          obscureText: obsqureText, // No null check needed now
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: hintLabel,
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
            ),
            filled: true,
            fillColor: Colors.grey[200],
            suffixIcon: suffixWidget,
          ),
        ),
      ),
    );
  }
}

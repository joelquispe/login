import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class WTextField extends GetView {
  final bool obscureText;
  final TextInputType textInputType;
  final String labelText;
  final String? Function(String?)? validator;
  final controller;
  
  const WTextField(this.obscureText,this.textInputType,this.labelText,this.controller,this.validator);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: textInputType,
      validator: validator,
      
      decoration: InputDecoration(
        labelText: labelText,
        
      ),
    );
  }
}



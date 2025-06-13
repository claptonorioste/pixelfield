import 'package:flutter/material.dart';
import 'package:pixelfield/app/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    this.isPassword = false,
    required this.onChanged,
  });
  final String label;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final bool isPassword;
  final Function() onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: isPassword
            ? IconButton(
                color: Color(fieldColor),
                onPressed: () {
                  onChanged();
                },
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
        label: Text(label),
        filled: true,
        fillColor: Color(bgColor),
        labelStyle: TextStyle(color: Color(fieldColor)),
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(fieldColor)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(fieldColor)),
        ),
      ),
    );
  }
}

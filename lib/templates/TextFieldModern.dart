import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../internal/hexToColor.dart';

class TextFieldModern extends StatelessWidget {
  const TextFieldModern(
      {required this.obscureText,
      required this.isConfirm,
      required this.labelText,
      required this.helperText,
      required this.isPassword,
      required this.hintText,
      required this.controller,
      required this.confirmPass});
  final TextEditingController controller;
  final TextEditingController confirmPass;
  final bool obscureText;
  final bool isPassword;
  final bool isConfirm;
  final String labelText;
  final String helperText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 56,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(9),
          topRight: Radius.circular(9),
          bottomLeft: Radius.circular(9),
          bottomRight: Radius.circular(9),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
              offset: Offset(0, 4),
              blurRadius: 8)
        ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: TextFormField(
          controller: controller,
          validator: (value) {
            if (isPassword) {
              if (!isConfirm) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password!';
                }
              } else {
                if (value != confirmPass.text) {
                  return 'Password Not Match!';
                }
              }
            } else {
              if (value == null || value.isEmpty) {
                return 'Please enter your information!';
              }
            }
            return null;
          },
          obscureText: obscureText,
          inputFormatters: [],
          style: TextStyle(color: HexColor.fromHex("#343237")),
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.transparent,
            )),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.transparent,
            )),
            border: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.transparent,
            )),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.transparent,
            )),
            labelStyle: TextStyle(
                color: HexColor.fromHex("#343237"),
                fontSize: 16,
                fontWeight: FontWeight.w400),
            helperStyle: TextStyle(
                color: HexColor.fromHex("#828282"),
                fontSize: 16,
                fontWeight: FontWeight.w400),
            hintStyle: TextStyle(
                color: HexColor.fromHex("#828282"),
                fontSize: 16,
                fontWeight: FontWeight.w400),
            filled: false,
            fillColor: Colors.transparent,
            labelText: labelText,
            // helperText: helperText,
            hintText: hintText,
          )),
    );
  }
}

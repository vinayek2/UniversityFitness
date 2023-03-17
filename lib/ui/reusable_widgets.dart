import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ufit/ui/export.dart';

TextField reusuableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
//finish text input
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    textAlign: TextAlign.left,
    style: const TextStyle(
      color: FvColors.black,
      fontSize: 17,
      fontWeight: FontWeight.w700,
    ),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Color.fromARGB(97, 136, 133, 133),
      ),
      labelText: text,
      labelStyle: TextStyle(color: Color.fromARGB(97, 136, 133, 133)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Color.fromARGB(255, 255, 255, 255),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

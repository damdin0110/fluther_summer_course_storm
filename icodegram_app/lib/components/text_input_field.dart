import 'package:flutter/material.dart';
class TextInputField extends StatelessWidget {
  String hintText;
  bool isPassword;
  TextInputType textInputType;
   TextEditingController editingController=TextEditingController();
TextInputField({super.key,required this.hintText,required this.editingController,required this.isPassword,required this.textInputType,});

  @override
  Widget build(BuildContext context) {
    return TextField(controller: editingController,
        obscureText: isPassword,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: '$hintText',
          border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context)),
          focusedBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context)),
          enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context)),
          filled: true,
          contentPadding: EdgeInsets.all(8),
        ));
  }
}

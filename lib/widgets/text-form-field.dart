import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget{
  final Icon? icon;
  final String hintText;
  final String labelText;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.icon,
  }
);

  @override
  CustomTextFieldState createState(){
    return CustomTextFieldState();
  }
}

class CustomTextFieldState extends State<CustomTextField>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 5,
        left: 10,
        right: 10,
        top: 5
      ),
      child: 
        TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            icon: widget.icon,
            hintText: widget.hintText,
            labelText: widget.labelText,
          ),
        )
    );
  }

}
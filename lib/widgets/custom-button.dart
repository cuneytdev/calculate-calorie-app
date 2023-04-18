import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final Icon? icon;
  // Icon can be added to text
  final String label;
  final ButtonStyle? style;

  const CustomButton({
    super.key,
    required this.label,
    this.icon,
    this.style
  });

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            minimumSize: const Size.fromHeight(60),
            backgroundColor: Colors.blue,
          ),
          onPressed: (){
            print("form submitted");
          },
          child: Text(
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white,
              ),
            label
          ),
        )
    );
  }

}


import 'package:flutter/material.dart';
class MyFromTextField extends StatelessWidget {
    final String labelText;
    final String hintText;
    final TextInputType;
    final bool obscureText;
    final bool suffixIcon;
    final TextEditingController controller;

  const MyFromTextField({super.key,
    required this.labelText,
    required this.hintText,
    this.TextInputType,
    required this.obscureText,
    required this.suffixIcon,
    required this.controller,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration:  BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius:BorderRadius.circular(6.0),
          boxShadow:[
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            blurRadius:7,
            offset:const Offset(0,5),
          )
      ]
    ),
    child:TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: TextInputType,
      decoration: InputDecoration(
          labelText: labelText,
          hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),

    )

    ),
    );
  }
}

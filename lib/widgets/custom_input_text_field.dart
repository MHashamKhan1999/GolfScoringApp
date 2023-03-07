import 'package:flutter/material.dart';

class CustomInputTextField extends StatelessWidget {

  final double height;
  final double width;
  final Color? bgColor;
  String hintText;
  final Color? hintTextColor;


  CustomInputTextField({Key? key, required this.height, required this.width, this.bgColor, required this.hintText, this.hintTextColor = const Color(0xFF459858)}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: this.bgColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: this.hintText,
              hintStyle: (
                  TextStyle(color: this.hintTextColor,)
              ),
            ),
          ),
        ),
      ),
    );
  }
}

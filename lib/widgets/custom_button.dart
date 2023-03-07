import 'package:flutter/material.dart';
import 'package:golfscoringmobileapp/utils/appConstant.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final Color? color;
  final double radius;

  CustomButton(
      {Key? key,
        required this.text,
        this.width = 135,
        this.color = const Color(0xFF204B2A),
        this.radius = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,


      ),
      child: Center(
        child: Text(
          this.text,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: AppConstant.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,

            ),
          )
        ),
      ),
    );
  }
}
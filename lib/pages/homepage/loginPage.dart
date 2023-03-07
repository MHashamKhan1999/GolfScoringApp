import 'package:flutter/material.dart';
import 'package:golfscoringmobileapp/utils/appConstant.dart';
import 'package:golfscoringmobileapp/widgets/custom_button.dart';
import 'package:golfscoringmobileapp/widgets/custom_input_text_field.dart';
import 'package:google_fonts/google_fonts.dart';


class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.headColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg.png'),
              fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            // backgorund Image
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/loginPage.png')
                  )
              ),
            ),

            // Title
            Text("GOLF RANGE PRO",
              style: GoogleFonts.poppins(
                textStyle:  TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: AppConstant.whiteColor,
                ),
              )

            ),
            SizedBox(height: 80,),

            // Input Field Widget For Username
            CustomInputTextField(
              height: 60,
              width: 335,
              hintText: "Username / Email",
              bgColor: AppConstant.whiteColor,
              hintTextColor: AppConstant.textColor,
            ),

            SizedBox(height: 20,),
            // Input Field Widget For Password
            CustomInputTextField(
              height: 60,
              width: 335,
              hintText: "Password",
              bgColor: AppConstant.whiteColor,
              hintTextColor: AppConstant.textColor,
            ),

            SizedBox(height: 20,),

            // Custom Widget of Button
            CustomButton(text: "Login"),

            SizedBox(height: 150,),

            Container(
              child: Text(
                "Don't have an Account? Sign Up ",
                style: TextStyle(
                  color: AppConstant.whiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}

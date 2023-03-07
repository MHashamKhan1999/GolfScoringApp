import 'package:flutter/material.dart';
import 'package:golfscoringmobileapp/utils/appConstant.dart';
import 'package:golfscoringmobileapp/widgets/custom_button.dart';
import 'package:golfscoringmobileapp/widgets/custom_input_text_field.dart';
import 'package:golfscoringmobileapp/widgets/label_text.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.mainBgColor,
      body: Container(
          padding: EdgeInsets.only(top: 50),
          child : Center(
            child: Column(
              children: [
                Text("Register Your Self",
                  style: TextStyle(
                      color: AppConstant.textColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins"
                  ),
                ),
                SizedBox(height: 50,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelText("First Name"),
                    CustomInputTextField(height: 60, width: 335, hintText: "Enter Your First Name",bgColor: AppConstant.whiteColor,hintTextColor: AppConstant.textGrayColor,),
                    SizedBox(height: 20,),
                    LabelText("Last Name"),
                    CustomInputTextField(height: 60, width: 335, hintText: "Enter Your Last Name",bgColor: AppConstant.whiteColor,hintTextColor: AppConstant.textGrayColor,),
                    SizedBox(height: 20,),
                    LabelText("Username"),
                    CustomInputTextField(height: 60, width: 335, hintText: "Enter Your username",bgColor: AppConstant.whiteColor,hintTextColor: AppConstant.textGrayColor,),
                    SizedBox(height: 20,),
                    LabelText("Email"),
                    CustomInputTextField(height: 60, width: 335, hintText: "Enter Your Email",bgColor: AppConstant.whiteColor,hintTextColor: AppConstant.textGrayColor,),
                    SizedBox(height: 20,),
                    LabelText("Password"),
                    CustomInputTextField(height: 60, width: 335, hintText: "Enter Your Password",bgColor: AppConstant.whiteColor,hintTextColor: AppConstant.textGrayColor,),
                    SizedBox(height: 50,),
                  ],
                ),
                CustomButton(text: "Sign-Up")
              ],
            ),
          )
      ),
    );
  }
}

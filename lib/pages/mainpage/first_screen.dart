import 'package:flutter/material.dart';
import 'package:golfscoringmobileapp/Utils/appConstant.dart';
import 'package:golfscoringmobileapp/widgets/custom_button.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.boxBgColor,
        title: Container(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 10),
                  ),
                  Text("Hasham")
                ],
              ),
              Container(
                child: Icon(
                  Icons.menu,
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        color: AppConstant.mainBgColor,
        child: Center(
          child: Container(
            child: CustomButton(
              text: "Start a New Session",
              width: 240,
              radius: 5,
              color: AppConstant.textColor,
            ),
          ),
        ),
      ),

    );
  }
}

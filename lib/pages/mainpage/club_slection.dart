import 'package:flutter/material.dart';
import 'package:golfscoringmobileapp/widgets/custom_button.dart';
import 'package:golfscoringmobileapp/widgets/custom_drop_down.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/appConstant.dart';

class ClubSelection extends StatefulWidget {
  const ClubSelection({Key? key}) : super(key: key);

  @override
  State<ClubSelection> createState() => _ClubSelectionState();
}
List clubItem = ["Driver", "3 Wood", "5 Wood", "Hybrid"];
List shotItem = ["Draw", "Fade", "Straight"];
List noOfShots = ["5", "10", "15", "20", "50"];

class _ClubSelectionState extends State<ClubSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.mainBgColor,
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
              const Icon(
                Icons.menu,
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 150),
          child: Column(
            children: [
              CustomDropDown(
                dropDownItems: clubItem,
                iconColor: Colors.red,
                labelText: "Club",
              ),
              CustomDropDown(
                dropDownItems: shotItem,
                iconColor: Colors.red,
                labelText: "Shot",
              ),
              CustomDropDown(
                dropDownItems: noOfShots,
                iconColor: Colors.red,
                labelText: "How many shots in this session",

              ),
              SizedBox(height: 100,),
              CustomButton(
                  text: "Create Club Laibrary",
                width: 300,
                radius: 5,
                color: AppConstant.boxBgColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

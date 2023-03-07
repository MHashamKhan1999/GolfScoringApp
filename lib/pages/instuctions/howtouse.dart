import 'package:flutter/material.dart';
import 'package:golfscoringmobileapp/utils/appConstant.dart';
import 'package:golfscoringmobileapp/widgets/big_text.dart';
import 'package:golfscoringmobileapp/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class HowToUse extends StatelessWidget {
  const HowToUse({Key? key}) : super(key: key);

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
      backgroundColor: AppConstant.mainBgColor,
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Container(

                height: 380,
                width: 350,
                decoration: BoxDecoration(
                    color: AppConstant.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: AppConstant.textColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10))),
                      child: Center(
                        child: BigText(
                          text: "How To Use This App",
                          color: AppConstant.whiteColor,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1. Get warmed Up.",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20
                              ),
                            )

                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "2. Select your test balls.",
                            style:
                            GoogleFonts.poppins(
                              textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                            )
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "3. Press Start New Session.",
                            style:
                            GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),)
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "4. Record each session shot.",
                            style:
                            GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),)
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "5. Store values and anlayse.",
                            style:
                            GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              CustomButton(text: "Start A New Session",width: 335, color: AppConstant.textColor,radius: 5,)
            ],
          ),
        ),
      ),
    );
  }
}

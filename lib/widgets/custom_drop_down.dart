import 'package:flutter/material.dart';
import 'package:golfscoringmobileapp/Utils/appConstant.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDown extends StatefulWidget {
  final String labelText;
  final Color? iconColor;
  final List dropDownItems;

  CustomDropDown(
      {Key? key, required this.labelText, this.iconColor, required this.dropDownItems})
      : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  // ignore: recursive_getters
  String get labelText => widget.labelText;
  // ignore: recursive_getters
  Color? get iconColor => widget.iconColor;
  // ignore: prefer_typing_uninitialized_variables
  var itemValue;
  List get dropDownItem => widget.dropDownItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 5, bottom: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Label Text
                        Text(
                          labelText,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: AppConstant.textColor
                            )
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: iconColor,
                        ),
                      ],
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: AppConstant.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFF459858), width: 2),
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    dropdownColor: AppConstant.whiteColor,
                    alignment: Alignment.center,
                    focusColor: AppConstant.boxBgColor,
                    iconEnabledColor: AppConstant.boxBgColor,
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: AppConstant.textGrayColor, fontSize: 18),
                    ),
                    underline: const SizedBox(),
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 28,
                    hint: const Text("Select Item"),
                    value: itemValue,
                    onChanged: (newValue) {
                      setState(() {
                        itemValue = newValue;
                      });
                    },
                    items: dropDownItem.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

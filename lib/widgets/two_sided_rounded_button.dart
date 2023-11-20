import 'package:ebook_app/consttants.dart';
import 'package:flutter/material.dart';

class TwoSidedRoundedButton extends StatelessWidget {
  final String text;
  final double radius;
  final Function()? press;
  const TwoSidedRoundedButton({
    super.key, required this.text,  this.radius=29,  this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: kBlackColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(radius),bottomRight: Radius.circular(radius))),
        child: Text(text,style: TextStyle(color: Colors.white),)),
    );
  }
}

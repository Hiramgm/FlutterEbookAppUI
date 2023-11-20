
import 'package:ebook_app/consttants.dart';
import 'package:ebook_app/widgets/book_rating.dart';
import 'package:ebook_app/widgets/two_sided_rounded_button.dart';
import 'package:flutter/material.dart';
class ReadingCardList extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final Function()? pressDetails;
  final Function()? pressRead;

  const ReadingCardList({
    super.key, required this.image, required this.title, required this.auth, required this.rating,  this.pressDetails,  this.pressRead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24,bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
            BoxShadow(offset: Offset(0,10),
            blurRadius: 33,
            color: kShadowColor)
                          ]
                        ),
            ),
          ),
          Image.asset(image,width: 150,),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
              BookRating(score: rating,)
            ],
          )),
          Positioned(
            top: 160,
            child: Container(
            
            height: 85,
            width: 202,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8),
                  child: RichText(text: TextSpan(
                    style: TextStyle(color: kBlackColor),
                    children: [
                      TextSpan(text: "$title\n",style: TextStyle(
                        fontWeight: FontWeight.bold
                      )),
                      TextSpan(text: auth,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kLightBlackColor
                      ))
                    ]
                  )),
                ),
                Spacer(),
                Row(
                  children: [
                    GestureDetector(
                      onTap: pressDetails,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: 101,
                        alignment: Alignment.center,
                        child: Text("Details"),
                      ),
                    ),
                    Expanded(child: TwoSidedRoundedButton(text: "Read",press: pressRead,))
                  ],
                )
              ],
            ),
          ))


        ],
      ),
      
    );
  }
}

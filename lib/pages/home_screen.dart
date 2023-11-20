import 'package:ebook_app/consttants.dart';
import 'package:ebook_app/pages/details_screen.dart';
import 'package:ebook_app/widgets/book_rating.dart';
import 'package:ebook_app/widgets/reading_card_list.dart';
import 'package:ebook_app/widgets/two_sided_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/main_page_bg.png"),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.headlineMedium,
                            children: [
                          TextSpan(text: "What are you \nreading "),
                          TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              text: "today?")
                        ])),
                  ),
                  SizedBox(height: 30,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingCardList(title: "Crushing & Influence",auth: "Gray Venchuk",rating: 4.9, image: 'assets/images/book-1.png',pressDetails: (){Navigator.push(context, MaterialPageRoute(builder: (context){return DetailsScreen();},),);},),
                        ReadingCardList(title: "Top Ten Business Hacks",auth: "Hum Joel",rating: 4.5, image: 'assets/images/book-2.png',),
                        SizedBox(width: 30,)
                      ],
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.headlineMedium,
                            children: [
                          TextSpan(text: "Best of the "),
                          TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              text: "day")
                        ])),
                  ),
                  BestOfTheDayCard(size, context),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.headlineMedium,
                              children: [
                            TextSpan(text: "Continue "),
                            TextSpan(
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                text: "reading...")
                          ])),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Container(height: 80, width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(38.5),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 33,
                        color: kShadowColor
                      )
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(38.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Expanded(
                          child: Padding(
                            padding:  EdgeInsets.only(left:30,right: 20),
                            child: Row(
                              children: [
                                Expanded(child: Column(
                                                                mainAxisAlignment: MainAxisAlignment.end,

                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Crushing & Influence", style: 
                                    TextStyle(fontWeight:  FontWeight.bold),),
                                    Text("Gray Venchul", style: 
                                    TextStyle(color: kLightBlackColor),),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text("Chapter 7 of 10", style: 
                                    TextStyle(fontSize: 10,color: kLightBlackColor),),
                                    ),
                                    SizedBox(height: 5,)
                                  ],
                                )),
                                Image.asset("assets/images/book-1.png",width: 55,)
                              ],
                            ),
                          )
                        ),
                        Container(height: 7,
                        width: size.width*.65, decoration: BoxDecoration(color: kProgressIndicator, borderRadius: BorderRadius.circular(7)),)
                    
                      ],),
                    ),),
                  ),
                  SizedBox(height: 40,)
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container BestOfTheDayCard(Size size, BuildContext context) {
    return Container(
            height: 205,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            decoration: BoxDecoration(
            ),
            child: Stack(children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(left: 24,top: 24, right: size.width* .37),
                  height: 185,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFEAEAEA).withOpacity(0.45),
                    borderRadius: BorderRadius.circular(29)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("New York Time Best fo 11thMarch 2020", style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor
                    ),),
                    SizedBox(height: 5,),
                    Text("How to Win Friends and Influence", style: Theme.of(context).textTheme.titleLarge),
                     Text("Gary venchuk", style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        BookRating(score: 4.9),
                        SizedBox(width: 10),
                        Expanded(child: Text("When the earth was flat and everyone wanted to win the game",maxLines: 3, overflow: TextOverflow.ellipsis, style: TextStyle(
                          fontSize: 10,
                          color: kLightBlackColor
                        ),))
                      ],
                    )
                  ],),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset("assets/images/book-3.png",width: size.width*.37,)),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: 
                SizedBox(height: 40,width: size.width*.3, child: TwoSidedRoundedButton(text: "Read"),))
            ],),
          );
  }
}


import 'package:ebook_app/consttants.dart';
import 'package:ebook_app/widgets/book_rating.dart';
import 'package:ebook_app/widgets/round_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen
 extends StatelessWidget {
  const DetailsScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
      
                    image: DecorationImage(image: AssetImage("assets/images/bg.png"),fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height*.1,),
                        BookInfo()
                      ],
                    ),
                  ),
                ),
              Padding(padding: EdgeInsets.only(top: size.height*.4-30),
            
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChapterCard(chapterNumber: 1, name: "Money",tag: "Life is about to change",press: (){},),
                  ChapterCard(chapterNumber: 1, name: "Power",tag: "Everthing loves power",press: (){},),
                  ChapterCard(chapterNumber: 1, name: "Influence",tag: "Influence easily like never before",press: (){},),
                  ChapterCard(chapterNumber: 1, name: "Win",tag: "Winnig is what matters",press: (){},),
                  SizedBox(height: 10,),
      
      
                ],
              ),)
              ],
            ),
            Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          RichText(
                                text: TextSpan(
                                    style: Theme.of(context).textTheme.headlineMedium,
                                    children: [
                                  TextSpan(text: "You might also "),
                                  TextSpan(
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      text: "like...")
                                ])),
                            SizedBox(height: 20,),
                            Stack(
                              children: [
                                Container(
                                  height: 180,
                                  width: double.infinity,
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: 
                                Container(
                                  padding: EdgeInsets.only(top: 24,left: 24,right: 150),
                                  height: 160,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(29),
                                    color: Color(0xFFFFF8F9)
                                   
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                     color: kBlackColor
                                    ),
                                    children: [
                                  TextSpan(text: "How to Win Friends & Influence \n",style: TextStyle( fontSize: 20,)),
                                  TextSpan(
                                      style: TextStyle(
                                        color: kLightBlackColor,
                                      ),
                                      text: "Gray Venchuk")
                                ])),
                                Row(
                                  children: [
                                    BookRating(score: 4.9),
                                    SizedBox(width: 20,),
                                    Expanded(child: RoundButton(text: "Read",verticalPadding: 10,))
                                  ],
                                )

                                    ],
                                  ),
                                )),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child:  Image.asset("assets/images/book-3.png") )
                              ],
                            )
      
      
                        ],
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function()? press;
  const ChapterCard({
    super.key, required this.name, required this.tag, required this.chapterNumber, this.press, 
    
  });

 

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      width: size.width-48,
      
       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
       margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,10),
              blurRadius: 33,
              color: Color(0xFF666666).withOpacity(.11))
          
          ]
        ),
        child: Row(children: [
          RichText(text: TextSpan(children: [
            TextSpan(text: "Chapter $chapterNumber : $name \n",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kBlackColor
            )),
            TextSpan(text: tag ,style: TextStyle(
              color: kLightBlackColor
            ))
          ])),
          Spacer(),
          IconButton(onPressed: press, icon: Icon(Icons.arrow_forward_ios))
        ]),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text("Crushing &", style: Theme.of(context).textTheme.headlineMedium,),
              Text("Influence", style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),),
             SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Column(children: [
                    Text("When the earth was flat and everyone wanted to win the game. when the earth was flat and everyone wanted to win the game", maxLines: 5,style: TextStyle(fontSize: 10,color: kLightBlackColor),),
                    SizedBox(height: 5,),
                    RoundButton(text: "Read", verticalPadding: 10,)
                  ],)),
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
                      BookRating(score: 4.9)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset("assets/images/book-1.png")
      ],
    );
  }
}
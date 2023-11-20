import 'package:ebook_app/pages/home_screen.dart';
import 'package:ebook_app/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomeScreen extends StatelessWidget {
  
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Bitmap.png"),
          fit:BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text:  TextSpan(
                style: Theme.of(context).textTheme.displayMedium,
                children : const [
                  TextSpan(
                    text: "flamin",
                    
                  ),
                   TextSpan(
                    text: "go",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ]
              )
            ),
             SizedBox(
              width: MediaQuery.of(context).size.width*0.6,
              child:  RoundButton(text: "Start reading",fontSize: 16,verticalPadding: 16,
              press: (){
                Get.to(()=> HomeScreen());
                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return HomeScreen();
                // }
                // ));
              },

              )),
          ],
        ),
      ),
    );
  }
}


import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';
import 'home_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHight,
        child: Stack(children: [
          Positioned(
            top: screenHight * 0.1,
            left: -88,
            child: Container(
              height: 166,
              width: 166,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kPinkColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: const SizedBox(
                  height: 166,
                  width: 166,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHight * 0.3,
            right: -100,
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kGreenColor,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                child: Container(
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ),
          Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHight * 0.07,
                  ),
                  Image(image: AssetImage('assets/movie_hollywood.png'),width: 200,height: 200,),
                  SizedBox(
                    height: screenHight * 0.09,
                  ),
                  Text(
                    'Watch movies \n FullHD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenHight <= 660 ? 18 : 34,
                      fontWeight: FontWeight.w700,
                      color: Constants.kWhiteColor.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: screenHight * 0.05,
                  ),

                  Text(
                    'Download and watch offline\n wherever you are ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenHight <= 660 ? 12 : 16,
                      fontWeight: FontWeight.w100,
                      color: Constants.kWhiteColor.withOpacity(0.75),
                    ),
                  ),
                  SizedBox(
                    height: screenHight * 0.03,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient:const LinearGradient(colors: [Constants.kPinkColor, Constants.kCyanColor]),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      ),
                      child:const Text('Let\'s Go',style: TextStyle(fontSize: 24),),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import '../components/masked_image.dart';
import '../components/search_filed_widget.dart';
import '../constants.dart';
import '../models/movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: screenHight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHight * 0.4,
              right: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kCyanColor.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
              bottom: false,
              child: ListView(
                primary: true,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'MovieSpot',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      color: Constants.kRedColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SearchFieldWidget(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'New Movies',
                      style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: newMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Constants.kMaskFirstIndex;
                        } else if (index == newMovies.length - 1) {
                          mask = Constants.kMaskLastIndex;
                        } else {
                          mask = Constants.kMaskCenter;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 0,
                            ),
                            height: 160,
                            width: 142,
                            child: MaskedImage(
                              asset: newMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Popular movies',
                      style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: popularMovies.length,
                      itemBuilder: ((context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Constants.kMaskFirstIndex;
                        } else if (index == popularMovies.length - 1) {
                          mask = Constants.kMaskLastIndex;
                        } else {
                          mask = Constants.kMaskCenter;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 20,
                            ),
                            height: 160,
                            width: 142,
                            child: MaskedImage(
                              asset: popularMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Upcoming movies',
                      style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: upcomingMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Constants.kMaskFirstIndex;
                        } else if (index == upcomingMovies.length - 1) {
                          mask = Constants.kMaskLastIndex;
                        } else {
                          mask = Constants.kMaskCenter;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 0,
                            ),
                            height: 160,
                            width: 142,
                            child: MaskedImage(
                              asset: upcomingMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GlassmorphicContainer(
        width: screenWidth,
        height: 45,
        borderRadius: 0,
         linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Constants.kWhiteColor.withOpacity(0.1),
            Constants.kWhiteColor.withOpacity(0.1),
          ],
      ),
      border: 0,
      blur: 30,
       borderGradient:const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Constants.kPinkColor,
            Constants.kGreenColor,
          ],
        ) ,
     
    child:BottomAppBar(
      color: Colors.transparent,
      notchMargin: 4,
      elevation: 0,
      child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
                Expanded(
                child: IconButton(
                  onPressed: () {
                    dialog(context, 'Home', 'You Clicked on Home Button!');
                  },
                  icon: SvgPicture.asset(
                    Constants.kIconHome,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    dialog(context, 'PlayerTv', 'You Clicked on PlayerTv Button!');
                  },
                  icon: SvgPicture.asset(
                    Constants.kIconPlayOnTv,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    dialog(context, 'Categories', 'You Clicked on Categories Button!');
                  },
                  icon: SvgPicture.asset(
                    Constants.kIconCategories,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    dialog(context, 'Download', 'You Clicked on Download Button!');
                  },
                  icon: SvgPicture.asset(
                    Constants.kIconDownload,
                  ),
                ),
              ),
            
         ],
      ),
      )
      ), 
    );
  }

  void dialog(BuildContext context,String title,String content){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

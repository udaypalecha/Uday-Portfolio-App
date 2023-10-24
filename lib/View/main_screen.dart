import 'package:flutter/material.dart';
import 'package:my_portfolio/View/first_screen_view.dart';
import 'package:my_portfolio/View/second_screen_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  late PageController pageController;

  void onNextPage(int page){
    pageController.animateToPage(page,
        duration: const Duration(seconds: 1),
        curve: Curves.easeIn
    );
  }
  @override
  void initState(){
    super.initState();
    pageController = PageController(
      initialPage: 0
    );
  }

  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Size size   = MediaQuery.of(context).size;
    return
      SafeArea(
        child: Scaffold(
     body: SizedBox(
         width: size.width,
           height: size.height,
         child:PageView(
           controller: pageController,
           scrollDirection: Axis.vertical,
           children: [
           FirstScreenView(onNextPage: ()=> onNextPage(1)),
             SecondScreenView(onNextPage: () => onNextPage(0)),
           ],
         ),
     ),
    ),
      );
  }
}
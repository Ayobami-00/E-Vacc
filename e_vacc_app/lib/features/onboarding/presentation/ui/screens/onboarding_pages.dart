import 'dart:async';

import 'package:e_vacc_app/core/navigation/index.dart';
import 'package:e_vacc_app/features/onboarding/index.dart';
import 'package:e_vacc_app/utils/index.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:google_fonts/google_fonts.dart';

int currentIndex = 0;
PageController pageController = PageController();

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnboardingSlider> slides = <OnboardingSlider>[];
  late Timer _pageViewAutoAnimateTimer;

  @override
  void initState() {
    super.initState();
    slides = getSlides();
    _pageViewAutoAnimateTimer = Timer.periodic(
      const Duration(seconds: 5),
      (timer) {
        if (currentIndex != slides.length - 1) {
          pageController.animateToPage(
            currentIndex + 1,
            duration: const Duration(milliseconds: 400),
            curve: Curves.linear,
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _pageViewAutoAnimateTimer.cancel();
    super.dispose();
  }

  Widget pageIndexIndicator({required bool isCurrentPage}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: 8,
      width: 20,
      decoration: BoxDecoration(
          color: isCurrentPage ? HexColor("#090909") : HexColor("#FFFFFF"),
          shape: BoxShape.circle,
          border: Border.all(color: HexColor("#090909").withOpacity(0.1))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, signInRoute);
                    },
                    child: Visibility(
                      visible: currentIndex != 3,
                      child: Row(
                        children: [
                          Text("SIGN IN",
                              style: GoogleFonts.dosis(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#AAA7A7"),
                              )),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20.0,
                            color: HexColor("#AAA7A7"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                  controller: pageController,
                  itemCount: slides.length,
                  onPageChanged: (val) {
                    setState(() {
                      currentIndex = val;
                    });
                  },
                  itemBuilder: (context, index) {
                    return SliderTile(
                      lottieJsonPath: slides[index].getlottieJsonAssetPath!,
                      title: slides[index].getTitle!,
                      desc: slides[index].getDesc!,
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 120,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < slides.length; i++)
                        currentIndex == i
                            ? pageIndexIndicator(isCurrentPage: true)
                            : pageIndexIndicator(isCurrentPage: false)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

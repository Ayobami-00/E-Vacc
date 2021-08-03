import 'dart:ui';

import 'package:e_vacc_app/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final double appHeight = MediaQuery.of(context).size.height;
    final double appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(homepage_1), fit: BoxFit.cover)),
              child: Stack(
                children: [
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: appWidth,
                      height: appHeight * 0.8,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors
                                  .black, // I don't know what Color this will be, so I can't use this
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: appHeight * 0.25,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: Column(
                        children: [
                          Text(
                            "E-VAC",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dosis(
                              fontSize: 60,
                              fontWeight: FontWeight.w400,
                              color: kWhite,
                            ),
                          ),
                          Text(
                            "  access to your vaccine cards anywhere",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dosis(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kWhite,
                            ),
                          ),
                          TextButton(onPressed: () {}, child: Container())
                        ],
                      ),
                    ),
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

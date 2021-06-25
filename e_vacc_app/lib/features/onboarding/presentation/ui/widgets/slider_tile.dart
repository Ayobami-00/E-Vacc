import 'package:e_vacc_app/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SliderTile extends StatelessWidget {
  final String lottieJsonPath, title, desc;
  const SliderTile(
      {required this.lottieJsonPath, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 100,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Expanded(
                flex: 2,
                child: Lottie.asset(lottieJsonPath),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#000000"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 2,
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.indieFlower(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.3,
                    color: HexColor("#707070"),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

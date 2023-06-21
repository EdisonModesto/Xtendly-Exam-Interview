import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/colors.dart';

class HeroView extends ConsumerStatefulWidget {
  const HeroView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HeroViewState();
}

class _HeroViewState extends ConsumerState<HeroView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      return Container(
        height: 1024,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_hero.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/images/hero_01.png",
                width: constraints.maxWidth * 0.2645,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Transform.translate(
                offset: const Offset(0, -50),
                child: Image.asset(
                  "assets/images/hero_03.png",
                  width: constraints.maxWidth * 0.5027,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Transform.translate(
                offset: const Offset(-175, 50),
                child: Image.asset(
                  "assets/images/hero_02.png",
                  width: constraints.maxWidth * 0.26875,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Transform.translate(
                offset: const Offset(0, -162),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors().white,
                    shadowColor: Colors.black.withOpacity(.25),
                    fixedSize: const Size(218, 57),
                  ),
                  child: Text(
                    "Shop Now",
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    },);
  }
}

import 'package:auto_animated/auto_animated.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/breakpoints.dart';
import '../../../constants/colors.dart';

class HeroMobile extends ConsumerStatefulWidget {
  const HeroMobile({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  ConsumerState createState() => _HeroMobileState();
}

class _HeroMobileState extends ConsumerState<HeroMobile> {



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimateIfVisible(
            key: const Key('item.1'),
            duration: const Duration(milliseconds: 500),
            reAnimateOnVisibility: true,
          builder: (context, animation) => FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: Align(
              alignment: Alignment.centerRight,
              child: Transform.translate(
                offset: Offset(0, widget.constraints.maxWidth * -0.45),
                child: Image.asset(
                  "assets/images/hero_03.png",
                  width: widget.constraints.minWidth * 0.712,
                ),
              ),
            ),
          )
        ),
        AnimateIfVisible(
          key: const Key('item.2'),
          duration: const Duration(milliseconds: 500),
          reAnimateOnVisibility: true,
          builder: (context, animation){
            return FadeTransition(
              opacity: Tween<double>(
                begin: 0,
                end: 1,
              ).animate(animation),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Transform.translate(
                  offset: Offset(widget.constraints.maxWidth * 0.05, 50),
                  child: Image.asset(
                    "assets/images/hero_02.png",
                    width: widget.constraints.maxWidth * 0.5253,
                  ),
                ),
              ),
            );
          },
        ),
        AnimateIfVisible(
          key: const Key('item.3'),
          duration: const Duration(milliseconds: 500),
          reAnimateOnVisibility: true,
          builder: (context, animation){
            return FadeTransition(
              opacity: Tween<double>(
                begin: 0,
                end: 1,
              ).animate(animation),
              child: Align(
                alignment:  Alignment.centerRight,
                child: Transform.translate(
                  offset: Offset(-10, widget.constraints.maxWidth * 0.65),
                  child: Image.asset(
                    "assets/images/hero_01.png",
                    width: widget.constraints.minWidth * 0.4986,
                  ),
                ),
              )
            );
          },
        ),
        Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors().white,
                shadowColor: Colors.black.withOpacity(.25),
                fixedSize: const Size(180, 50)
            ),
            child: Center(
              child: AutoSizeText(
                "Shop Now",
                style: GoogleFonts.inter(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                minFontSize: 0,
                maxLines: 1,
              ),
            ),
          ),
        )
      ],
    );

  }
}

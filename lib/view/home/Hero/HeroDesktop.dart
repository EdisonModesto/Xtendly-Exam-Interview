import 'package:auto_animated/auto_animated.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/breakpoints.dart';
import '../../../constants/colors.dart';

class HeroDesktop extends ConsumerStatefulWidget {
  const HeroDesktop({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  ConsumerState createState() => _HeroDesktopState();
}

class _HeroDesktopState extends ConsumerState<HeroDesktop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimateIfVisible(
          key: const Key('item.1'),
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
                  child: Image.asset(
                    "assets/images/hero_01.png",
                    width: widget.constraints.minWidth * 0.2645,
                  ),
                )
            );
          },
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
                  alignment: Alignment.centerRight,
                  child: Transform.translate(
                    offset: const Offset(0, -50),
                    child: Image.asset(
                      "assets/images/hero_03.png",
                      width: widget.constraints.minWidth * 0.5027,
                    ),
                  ),
                )
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
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: Offset(widget.constraints.maxWidth * -0.12, 50),
                    child: Image.asset(
                      "assets/images/hero_02.png",
                      width: widget.constraints.maxWidth * 0.26875,
                    ),
                  ),
                ),
            );
          },
        ),
        Align(
          alignment: Alignment.center,
          child: Transform.translate(
            offset:  Offset(0, widget.constraints.maxWidth * 0.23),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors().white,
                  shadowColor: Colors.black.withOpacity(.25),
                  fixedSize: Size(widget.constraints.minWidth * 0.15138, (widget.constraints.minWidth/20).clamp(25, 57))
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
          ),
        )
      ],
    );
  }
}
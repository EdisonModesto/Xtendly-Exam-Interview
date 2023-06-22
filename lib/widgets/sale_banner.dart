import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/breakpoints.dart';
import 'package:xtendly_exam_interview/constants/colors.dart';

class SaleBanner extends ConsumerStatefulWidget {
  const SaleBanner({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SaleBannerState();
}

class _SaleBannerState extends ConsumerState<SaleBanner> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      return AnimateIfVisible(
        key: const Key('item.6.5'),
        duration: const Duration(milliseconds: 500),
        reAnimateOnVisibility: true,
        builder: (context, animation){
          return FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: Container(
              height: 77,
              width: 1440,
              color: AppColors().white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(constraints.maxWidth < mobileBreakpoint ? 1 : 5, (index){
                  return Text(
                      "SALE",
                      style: GoogleFonts.inter(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      )
                  );
                }),
              ),
            ),
          );
        },
      );
    });
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/colors.dart';
import 'package:xtendly_exam_interview/view/home/Hero/HeroMobile.dart';

import '../../../constants/breakpoints.dart';
import 'HeroDesktop.dart';

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
    return Container(
      height: 1024,
      width: 1440,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_hero.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: LayoutBuilder(builder: (context, constraints){
        if (constraints.maxWidth < mobileBreakpoint) {
          return HeroMobile(constraints: constraints);
        }
        return HeroDesktop(
          constraints: constraints,
        );
      },),
    );
  }
}








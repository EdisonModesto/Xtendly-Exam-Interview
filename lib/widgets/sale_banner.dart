import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Container(
      height: 77,
      color: AppColors().white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(5, (index){
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
    );
  }
}

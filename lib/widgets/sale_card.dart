import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/colors.dart';

import '../constants/breakpoints.dart';

class SaleCard extends ConsumerStatefulWidget {
  const SaleCard({
    //required this.screenWidth,
    Key? key,
  }) : super(key: key);

  //final double screenWidth;

  @override
  ConsumerState createState() => _SaleCardState();
}

class _SaleCardState extends ConsumerState<SaleCard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      return SizedBox(
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/products_01.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Transform.translate(
                      offset: Offset((constraints.maxWidth * .50)/2, 20),
                      child: Container(
                        width: constraints.maxWidth * .50,
                        height: 40,
                        decoration: BoxDecoration(
                            color: AppColors().saleTag
                        ),
                        child: Center(
                          child: Text(
                            "15% OFF",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              color: AppColors().white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "LOREM IPSUM",
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                    fontSize: constraints.maxWidth / 11 * 0.8
                ),
                maxLines: 1,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Lorem Ipsum",
                style: GoogleFonts.inter(
                  fontSize: constraints.maxWidth / 11 * 0.8,
                  color: Colors.black,
                ),

                maxLines: 1,
              ),
            )
          ],
        ),
      );
    });
  }
}

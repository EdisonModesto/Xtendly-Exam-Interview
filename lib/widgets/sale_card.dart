import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/colors.dart';

import '../constants/breakpoints.dart';

class SaleCard extends ConsumerStatefulWidget {
  const SaleCard({
    required this.screenWidth,
    Key? key,
  }) : super(key: key);

  final double screenWidth;

  @override
  ConsumerState createState() => _SaleCardState();
}

class _SaleCardState extends ConsumerState<SaleCard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
    // Retrieve the screen width from the constraints
      final screenWidth = widget.screenWidth;

      // Calculate the new height based on the screen width
      double newHeight = screenWidth * (widget.screenWidth < mobileBreakpoint ? 0.7 : 0.3); // Adjust this factor as per your requirement

      // Apply the maximum and minimum height constraints
      newHeight = newHeight.clamp(200.0, 400.0);
      return SizedBox(
        height: newHeight,
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
                      offset: widget.screenWidth < mobileBreakpoint ? Offset(24, 12) : Offset(45, 20),
                      child: Container(
                        width: widget.screenWidth < mobileBreakpoint ? 48 : 90,
                        height: widget.screenWidth < mobileBreakpoint ? 24 : 40,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: AppColors().saleTag
                        ),
                        child: Center(
                          child: AutoSizeText(
                            "15% OFF",
                            style: GoogleFonts.inter(
                              fontSize: widget.screenWidth < mobileBreakpoint ? 11 : 18,
                              color: AppColors().white,
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
              ),
            ),
            SizedBox(height: widget.screenWidth < mobileBreakpoint ? 10 : 20),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "LOREM IPSUM",
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                    fontSize: widget.screenWidth < mobileBreakpoint ? 15 : 18,
                ),
                maxLines: 1,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Lorem Ipsum",
                style: GoogleFonts.inter(
                  fontSize: widget.screenWidth < mobileBreakpoint ? 15 : 18,
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

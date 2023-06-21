import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/colors.dart';

class SaleCard extends ConsumerStatefulWidget {
  const SaleCard({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SaleCardState();
}

class _SaleCardState extends ConsumerState<SaleCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 400,
            width: 300,
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
                    offset: const Offset(45, 20),
                    child: Container(
                      width: 90,
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
          Text(
            "LOREM IPSUM",
            style: GoogleFonts.inter(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Lorem Ipsum",
            style: GoogleFonts.inter(
              fontSize: 18,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

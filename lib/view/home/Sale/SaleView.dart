import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/widgets/sale_card.dart';

import '../../../constants/colors.dart';

class SaleView extends ConsumerStatefulWidget {
  const SaleView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SaleViewState();
}

class _SaleViewState extends ConsumerState<SaleView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1224,
      padding: const EdgeInsets.all(79),
      child: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 50,
              childAspectRatio: 0.8,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(8, (index) {
                return const SaleCard();
              }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors().white,
              shadowColor: Colors.black.withOpacity(.25),
              fixedSize: const Size(218, 57),
            ),
            child: Text(
              "More",
              style: GoogleFonts.inter(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

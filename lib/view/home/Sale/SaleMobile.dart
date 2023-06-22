import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';
import '../../../widgets/sale_card.dart';

class SaleMobile extends ConsumerStatefulWidget {
  const SaleMobile({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  ConsumerState createState() => _SaleMobileState();
}

class _SaleMobileState extends ConsumerState<SaleMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1224,
      width: 1440,
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          Expanded(
            child: AnimateIfVisible(
              key: const Key('item.7'),
              duration: const Duration(milliseconds: 500),
              reAnimateOnVisibility: true,
              builder: (context, animation){
                return FadeTransition(
                  opacity: Tween<double>(
                    begin: 0,
                    end: 1,
                  ).animate(animation),
                  child: AlignedGridView.count(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    itemCount: 6,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return SaleCard(
                        screenWidth: widget.constraints.maxWidth,
                      );
                    },
                  ),
                );
              },
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

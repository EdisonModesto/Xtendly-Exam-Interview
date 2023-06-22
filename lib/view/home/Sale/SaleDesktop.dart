import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';
import '../../../widgets/sale_card.dart';

class SaleDesktop extends ConsumerStatefulWidget {
  const SaleDesktop({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  final BoxConstraints constraints;
  
  @override
  ConsumerState createState() => _ScaleDesktopState();
}

class _ScaleDesktopState extends ConsumerState<SaleDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1224,
      width: 1440,
      padding: const EdgeInsets.all(80),
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
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    crossAxisCount: 4,
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 50,
                    itemCount: 8,
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/breakpoints.dart';
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
    return LayoutBuilder(builder: (context, constraints){
      return Container(
        height: 1224,
        width: 1440,
        padding: EdgeInsets.all(constraints.maxWidth < mobileBreakpoint ? 40 : 80),
        child: Column(
          children: [
            Expanded(
               child: AlignedGridView.count(
                 padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth < mobileBreakpoint ? 20 : 80),
                 crossAxisCount: constraints.maxWidth < mobileBreakpoint ? 2 : 4,
                 mainAxisSpacing: constraints.maxWidth < mobileBreakpoint ? 30 : 50,
                 crossAxisSpacing: constraints.maxWidth < mobileBreakpoint ? 30 : 50,
                 itemCount: constraints.maxWidth < mobileBreakpoint ? 6 : 8,
                 physics: const NeverScrollableScrollPhysics(),
                 itemBuilder: (context, index) {
                   return SaleCard(
                     screenWidth: constraints.maxWidth,
                   );
                 },
               ),

              /*GridView.count(
                  crossAxisCount: constraints.maxWidth < mobileBreakpoint ? 2 : 4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: constraints.maxWidth * 0.1,
                  childAspectRatio: constraints.maxWidth < mobileBreakpoint ? 135/200 :  272/400, //0.6,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(8, (index) {
                    return const SaleCard();
                  }),
                ),*/
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
    });
  }
}

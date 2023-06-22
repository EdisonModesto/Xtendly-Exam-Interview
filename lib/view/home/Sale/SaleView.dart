import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/breakpoints.dart';
import 'package:xtendly_exam_interview/view/home/Sale/SaleDesktop.dart';
import 'package:xtendly_exam_interview/widgets/sale_card.dart';

import '../../../constants/colors.dart';
import 'SaleMobile.dart';

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
      if (constraints.maxWidth < mobileBreakpoint) {
        return SaleMobile(constraints: constraints);
      }
      return SaleDesktop(constraints: constraints);
    });
  }
}

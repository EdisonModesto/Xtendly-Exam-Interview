import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/view/home/Products/ProductDesktop.dart';
import 'package:xtendly_exam_interview/view/home/Products/ProductsMobile.dart';

import '../../../constants/breakpoints.dart';
import '../../../constants/colors.dart';

class ProductsView extends ConsumerStatefulWidget {
  const ProductsView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ProductsViewState();
}

class _ProductsViewState extends ConsumerState<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){

      if (constraints.maxWidth < mobileBreakpoint) {
        return ProductsMobile(constraints: constraints);
      }
      return ProductDesktop(
        constraints: constraints,
      );
    },);
  }
}

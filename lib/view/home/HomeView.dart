import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xtendly_exam_interview/view/home/Hero/HeroView.dart';
import 'package:xtendly_exam_interview/view/home/Products/ProductsView.dart';
import 'package:xtendly_exam_interview/view/home/Sale/SaleView.dart';
import 'package:xtendly_exam_interview/widgets/custom_footer.dart';
import 'package:xtendly_exam_interview/widgets/custom_nav.dart';
import 'package:xtendly_exam_interview/widgets/sale_banner.dart';


class HomeView extends ConsumerStatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  HeroView(),
                  ProductsView(),
                  SaleBanner(),
                  SaleView(),
                  CustomFooter()
                ],
              ),
            ),
            CustomNav(),
          ],
        ),
      ),
    );
  }
}

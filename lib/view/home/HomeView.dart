import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xtendly_exam_interview/view/home/Hero/HeroView.dart';
import 'package:xtendly_exam_interview/view/home/Products/ProductsView.dart';
import 'package:xtendly_exam_interview/widgets/custom_nav.dart';


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

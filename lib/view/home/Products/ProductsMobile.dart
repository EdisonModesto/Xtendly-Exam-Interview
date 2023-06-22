import 'package:auto_animated/auto_animated.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class ProductsMobile extends ConsumerStatefulWidget {
  const ProductsMobile({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  ConsumerState createState() => _ProductsMobileState();
}

class _ProductsMobileState extends ConsumerState<ProductsMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1440,
        color: AppColors().whiteEB,
        padding: const EdgeInsets.only(top: 50 , bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              spacing: 40,
              runSpacing: 40,
              alignment: WrapAlignment.center,
              children: [
                AnimateIfVisible(
                  key: const Key('item.4'),
                  duration: const Duration(milliseconds: 500),
                  reAnimateOnVisibility: true,
                  builder: (context, animation){
                    return FadeTransition(
                      opacity: Tween<double>(
                        begin: 0,
                        end: 1,
                      ).animate(animation),
                      child: Container(
                        height: 300,
                        width: 200,
                        padding: const EdgeInsets.only(bottom: 40),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/products_01.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors().white,
                              shadowColor: Colors.black.withOpacity(.25),
                              fixedSize: const Size(140, 25),
                            ),
                            child: Text(
                              "Sweatshirts",
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                AnimateIfVisible(
                  key: const Key('item.5'),
                  duration: const Duration(milliseconds: 500),
                  reAnimateOnVisibility: true,
                  builder: (context, animation){
                    return FadeTransition(
                      opacity: Tween<double>(
                        begin: 0,
                        end: 1,
                      ).animate(animation),
                      child: Container(
                        height: 300,
                        width: 200,
                        padding: const EdgeInsets.only(bottom: 40),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/hero_02.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors().white,
                              shadowColor: Colors.black.withOpacity(.25),
                              fixedSize: const Size(127, 25),
                            ),
                            child: Text(
                              "Hoodies",
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                AnimateIfVisible(
                  key: const Key('item.6'),
                  duration: const Duration(milliseconds: 500),
                  reAnimateOnVisibility: true,
                  builder: (context, animation){
                    return FadeTransition(
                      opacity: Tween<double>(
                        begin: 0,
                        end: 1,
                      ).animate(animation),
                      child: Container(
                        height: 300,
                        width: 200,
                        padding: const EdgeInsets.only(bottom: 40),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/products_01.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors().white,
                              shadowColor: Colors.black.withOpacity(.25),
                              fixedSize: const Size(127, 25),
                            ),
                            child: Text(
                              "Pair",
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

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
      return Container(
          width: 1440,
          color: AppColors().whiteEB,
        padding: EdgeInsets.only(top: constraints.maxWidth < mobileBreakpoint ? 50 :  150, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                Container(
                  height: constraints.maxWidth < mobileBreakpoint ? 300 : 600,
                  width: constraints.maxWidth < mobileBreakpoint ? 200 : 400,
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
                        fixedSize:  constraints.maxWidth < mobileBreakpoint ? const Size(127, 25) : const Size(218, 57),
                      ),
                      child: Text(
                        "Sweatshirts",
                        style: GoogleFonts.inter(
                          fontSize: constraints.maxWidth < mobileBreakpoint ? 15 : 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: constraints.maxWidth < mobileBreakpoint ? 300 : 600,
                  width: constraints.maxWidth < mobileBreakpoint ? 200 : 400,
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
                        fixedSize:  constraints.maxWidth < mobileBreakpoint ? const Size(127, 25) : const Size(218, 57),
                      ),
                      child: Text(
                        "Hoodies",
                        style: GoogleFonts.inter(
                          fontSize: constraints.maxWidth < mobileBreakpoint ? 15 : 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: constraints.maxWidth < mobileBreakpoint ? 300 : 600,
                  width: constraints.maxWidth < mobileBreakpoint ? 200 : 400,
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
                        fixedSize:  constraints.maxWidth < mobileBreakpoint ? const Size(127, 25) : const Size(218, 57),
                      ),
                      child: Text(
                        "Pair",
                        style: GoogleFonts.inter(
                          fontSize: constraints.maxWidth < mobileBreakpoint ? 15 : 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Visibility(
              visible: constraints.maxWidth < mobileBreakpoint ? false : true,
              child: Text(
                """Lorem ipsum dolor sit amet, consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco
laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
deserunt mollit anim id est laborum.""",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                )
              ),
            )
          ],
        )
      );
    },);
  }
}

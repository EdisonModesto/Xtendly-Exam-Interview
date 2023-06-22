import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/colors.dart';

import '../constants/breakpoints.dart';

class CustomNav extends ConsumerStatefulWidget {
  const CustomNav({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CustomNavState();
}

class _CustomNavState extends ConsumerState<CustomNav> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < mobileBreakpoint){
          return Container(
            height: 53,
            width: 1440,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            margin: const EdgeInsets.only(top: 20),
            color: AppColors().white,
            child: Row(
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                const Spacer(),
                const SizedBox(width: 50,),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color(0xffD9D9D9),
                      child: Text(
                        "Logo",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cases_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star_border_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ],
            ),
          );

        }

        return SizedBox(
          width: 1440,
          child: Column(
            children: [
              IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 58),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Help",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const VerticalDivider(
                        width: 1,
                        thickness: 1,
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Join Us",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const VerticalDivider(
                        width: 1,
                        thickness: 1,
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                height: 66,
                color: AppColors().white,
                padding: EdgeInsets.symmetric(horizontal: (constraints.maxWidth * 0.04).clamp(25, 58)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: const Color(0xffD9D9D9),
                        child: Text(
                          "Logo",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        "HOME",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: (constraints.maxWidth * 0.0112).clamp(10, 16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        "NEW ARRIVAL",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: (constraints.maxWidth * 0.0112).clamp(10, 16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        "SHOP",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: (constraints.maxWidth * 0.0112).clamp(10, 16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        "LAST COLLECTION",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: (constraints.maxWidth * 0.0112).clamp(10, 16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        "MEN",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: (constraints.maxWidth * 0.0112).clamp(10, 16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        "WOMEN",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: (constraints.maxWidth * 0.0112).clamp(10, 16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(width: (constraints.maxWidth * 0.035).clamp(0, 50),),
                    SizedBox(
                      width: (constraints.maxWidth * 0.135).clamp(0, 194),
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          filled: true,
                          isDense: true,
                          fillColor: AppColors().whiteE4,
                          hintText: "Search",
                          hintStyle: GoogleFonts.inter(
                            color: Colors.black.withOpacity(0.29),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: (constraints.maxWidth * 0.018).clamp(0, 25),),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.cases_outlined,
                        color: Colors.black,
                        size: (constraints.maxWidth * 0.02).clamp(20, 28),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border_outlined,
                        color: Colors.black,
                        size: (constraints.maxWidth * 0.02).clamp(20, 28),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}

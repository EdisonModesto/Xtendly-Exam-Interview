import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtendly_exam_interview/constants/breakpoints.dart';
import 'package:xtendly_exam_interview/constants/colors.dart';

class CustomFooter extends ConsumerStatefulWidget {
  const CustomFooter({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CustomFooterState();
}

class _CustomFooterState extends ConsumerState<CustomFooter> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      return Container(
        height: constraints.maxWidth < mobileBreakpoint ? 670 : 460,
        width: 1440,
        color: AppColors().whiteEB,
        padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth < mobileBreakpoint ? 46 : 100, vertical: 40),
        child: constraints.maxWidth < mobileBreakpoint ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xffD9D9D9),
                child: Text(
                  "LOGO",
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                )
            ),
            const Spacer(),
            Row(
              children: [
                Icon(
                  Icons.navigation,
                  color: AppColors().gray,
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    maxLines: 4,
                    style: GoogleFonts.inter(
                      color: AppColors().gray,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Icon(
                  Icons.phone_android,
                  color: AppColors().gray,
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Text(
                    "Lorem ipsum",
                    maxLines: 4,
                    style: GoogleFonts.inter(
                      color: AppColors().gray,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: AppColors().gray,
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Text(
                    "Lorem ipsum dolor sit amet",
                    maxLines: 4,
                    style: GoogleFonts.inter(
                      color: AppColors().gray,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
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

              ],
            ),
            const Spacer(),
            Text(
              "COLLECTION",
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "INFORMATION",
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "MORE",
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
          ],
        ) : Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 65,
                      backgroundColor: const Color(0xffD9D9D9),
                      child: Text(
                        "LOGO",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      )
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.navigation,
                        color: AppColors().gray,
                      ),
                      const SizedBox(width: 15,),
                      Expanded(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          maxLines: 4,
                          style: GoogleFonts.inter(
                            color: AppColors().gray,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: AppColors().gray,
                      ),
                      const SizedBox(width: 15,),
                      Expanded(
                        child: Text(
                          "Lorem ipsum",
                          maxLines: 4,
                          style: GoogleFonts.inter(
                            color: AppColors().gray,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: AppColors().gray,
                      ),
                      const SizedBox(width: 15,),
                      Expanded(
                        child: Text(
                          "Lorem ipsum dolor sit amet",
                          maxLines: 4,
                          style: GoogleFonts.inter(
                            color: AppColors().gray,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
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

                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "COLLECTION",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ...List.generate(6, (index) => Text(
                        "Lorem ipsum",
                        style: GoogleFonts.inter(
                          color: AppColors().gray,
                          fontSize: 15,
                          height: 2.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "INFORMATION",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ...List.generate(6, (index) => Text(
                        "Lorem ipsum",
                        style: GoogleFonts.inter(
                          color: AppColors().gray,
                          fontSize: 15,
                          height: 2.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MORE",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ...List.generate(6, (index) => Text(
                        "Lorem ipsum",
                        style: GoogleFonts.inter(
                          color: AppColors().gray,
                          fontSize: 15,
                          height: 2.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ))
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      );
    });
  }
}

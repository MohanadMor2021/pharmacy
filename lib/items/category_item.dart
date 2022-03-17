import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/global_componnets.dart';
import '../screens/ineer_screens/productCategory_screen.dart';






class CategoryItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            To(context ,ProductCategoryScreen() );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Container(
              alignment: Alignment.center,
              height: 65.h,
              width: 70.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
               // border: Border.all(color: Colors.grey, width: 1.7),
                color: Colors.grey.shade200,
              ),
              child: Image.asset(
                "assets/images/medicine_1.png",
                width: 45,
              ),
            ),
          ),
        ),
        Text(
          "الأدوية",
          textAlign: TextAlign.start,
          style: GoogleFonts.cairo(
            color: Colors.grey.shade700,
            fontSize: 15.sp,
            // fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

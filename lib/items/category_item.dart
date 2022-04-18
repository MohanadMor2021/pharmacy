import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';


import '../components/global_componnets.dart';
import '../data.dart';
import '../screens/ineer_screens/productCategory_screen.dart';





class CategoryItem extends StatelessWidget {

   final Category category;

  // String name;
  //  String icon;

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            To(context ,ProductCategoryScreen());
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
              //assets/images/medicine_1.png
              child: Image.asset(
                category.icon,
                width: 45,
              ),
            ),
          ),
        ),
        Text(
          category.name,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: GoogleFonts.cairo(
            color: Colors.grey.shade700,
            fontSize: 13.sp,
            // fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

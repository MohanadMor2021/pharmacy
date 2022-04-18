import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

import '../components/global_componnets.dart';
import '../screens/ineer_screens/brand_product_screen.dart';




class BrandItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        To(context , BrandProductScreen());
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Container(
          height: 90.h,
          width: 180.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
             border: Border.all(color: Colors.grey.shade300),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.network("http://assets.stickpng.com/thumbs/5cb78182a7c7755bf004c136.png",
              width: 40,


             // fit: BoxFit.fill,

            ),
          ),
        ),

      ),
    );
  }
}

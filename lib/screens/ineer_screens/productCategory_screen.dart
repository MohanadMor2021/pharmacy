import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/global_componnets.dart';
import '../../items/product_item.dart';
import '../bnb_screens/main_screen.dart';





class ProductCategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "الأدوية",
            style: GoogleFonts.cairo(
              fontSize: 14.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Padding(
            padding:  EdgeInsets.only(right: 10.w),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios , color: Colors.black,),
              onPressed: (){
                ToAndFinish(context, MainScreen());
              },
            ),
          ),
        ),


        body:  Padding(
          padding:  EdgeInsets.only(top: 20.h),
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 18)
                .add(EdgeInsets.only(bottom:20)),

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.5,
              // number of items per row
              crossAxisCount: 2,
              // vertical spacing between the items
              mainAxisSpacing: 8,
              // horizontal spacing between the items
              crossAxisSpacing:8,
            ),
            // number of items in your list
            itemCount: 8,
            itemBuilder: (context, index) => DelayedDisplay(
                delay: Duration(milliseconds: 700),
                child: ProductItem()),
          ),
        ),
      ),
    );
  }
}

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/global_componnets.dart';
import '../../items/cart_item.dart';






class CartScreen extends StatefulWidget {

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   centerTitle: true,
        //   elevation: 0.0,
        //   title:  Text(
        //     "عربة التسوق     ",
        //     style: GoogleFonts.cairo(
        //       fontSize: 12.sp,
        //       color: Colors.black,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //
        // ),

        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 30.h,),
                Text(
                  "عربة التسوق    ",
                  style: GoogleFonts.cairo(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "عدد الشحنات (10)",
                  style: GoogleFonts.cairo(
                    fontSize: 12.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Container(
                  width: double.infinity.w,
                  height: 410.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return DelayedDisplay(
                        delay: Duration(milliseconds: 300),
                        child: Padding(
                          padding:  EdgeInsets.only(top: 10.h),
                          child: CartItem(),
                        ),
                      );
                    },
                  ),
                ),




                     Container(
                       height: 156.h,
                       decoration: BoxDecoration(
                         color: Colors.grey.shade200,
                         borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                           topRight: Radius.circular(20.r),
                         ),
                       ),

                       child: Column(
                         children: [
                           CartRow("اجمالي المنتجات", "\$9.3000000" ),
                           CartRow(   "سعر التوصيل","\$9.3000"),
                           CartRow( "الاجمالي","\$9.3000"),

                           Padding(
                             padding:  EdgeInsets.symmetric(horizontal: 20.w).add(EdgeInsets.only(top: 10.h)),
                             child: myButton(
                               "إتمام الشراء",
                                 (){}
                             ),
                           ),
                         ],
                       ),
                     ),



              ],
            ),
          ],
        ),
      ),
    );
  }
}

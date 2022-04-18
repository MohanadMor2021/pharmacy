import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/constant.dart';
import '../components/global_componnets.dart';
import '../screens/ineer_screens/details_screen.dart';



class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        To(context , DetailsScreen());
      },
      child:  Container(
        alignment: Alignment.center,
        height: 280.h,
        width: 175.w,


        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Colors.grey.shade300 , width: 1.7),
          color: Colors.white,
        ),


        child:Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20.h,),

            Image.network(
                "https://cdn.chefaa.com/filters:format(webp)/fit-in/144x156/public/uploads/products/1587911903%D8%BA%D8%B3%D9%88%D9%84-%D9%86%D9%8A%D9%81%D9%8A%D8%A7-%D9%84%D9%84%D9%88%D8%AC%D8%A9-%D8%A7%D9%84%D8%A7%D8%B2%D8%B1%D9%82.png"),
            SizedBox(height: 10.h,),
            SizedBox(
              width: 150.w,
              child: Text(
                "نيفيا | غسول للوجة الازرق للبشرة العادية للرجال والنساء | 150مل",
                maxLines: 2,
                textAlign: TextAlign.start,
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(right: 10.w),
              child: Row(
                children: [
                  Text(
                    '20.00',
                    style: GoogleFonts.cairo(
                      fontSize: 14.sp,
                      color:Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Image.asset("assets/images/shekel.png" , width: 20.r,),
                ],
              ),
            ),



            SizedBox(height: 10.h,),


            Container(
              alignment: Alignment.center,
              height: 35.h,
              width: 170,


              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: primaryColor,
              ),
              child: Text(
                'أضف الى العربة',
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                  color:Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),

            ),


          ],
        ),
      ),
    );
  }
}

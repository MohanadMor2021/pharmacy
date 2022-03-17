import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/constant.dart';





class   CartItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),

      child: Stack(
        children: [
          Container(
            height: 100.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.grey.shade300,),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/product_1.png",
                  width: 90.w,

                  //fit: BoxFit.cover,
                ),


                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        "ريكسونا للرجال مزيل للعرق بخاخ اكسترا كول",
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.cairo(
                          color: Colors.grey.shade700,
                          fontSize: 14.sp,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [

                        InkWell(
                          onTap: (){
                          },
                          child: CircleAvatar(
                            radius: 14.r,
                            backgroundColor: Colors.grey,
                            child:  Padding(
                              padding:  EdgeInsets.only(),
                              child: Icon(Icons.add , color: Colors.white,),
                            ),
                          ),
                        ),

                        SizedBox(width: 10.w,),

                        Text(
                          " 13 ",
                          maxLines: 1,
                          style: GoogleFonts.cairo(
                            color: Colors.grey.shade700,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SizedBox(width: 10.w,),

                        InkWell(
                          onTap: (){},
                          child: CircleAvatar(
                            radius: 14.r,
                            backgroundColor: primaryColor,
                            child: Icon(Icons.remove , color: Colors.white,),
                          ),
                        ),
                        SizedBox(width: 50.w,),

                        Text(
                          "price: 20.0\$",
                          maxLines: 1,
                          style: GoogleFonts.cairo(
                            color: Colors.grey.shade700,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),



                      ],
                    ),

                    SizedBox(height: 8.h,),

                  ],
                ),

              ],
            ),
          ),

          Positioned(
            left: 2.w,
            top: 1.h,
            child: Container(
              width:37.w,
              height: 27.h,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10.r),
                  topLeft: Radius.circular(10.r),
                ),
              ),
              child: Icon(Icons.delete_outline_rounded , color: Colors.white,),
            ),
          ),

        ],
      ),
    );
  }
}

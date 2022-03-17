import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/constant.dart';


class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> with TickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();

  }



  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: FadeTransition(
          opacity: _animation,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(0, 10),
                        blurRadius: 5.0,
                        spreadRadius: 0),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),

                        InkWell(
                          onTap: () {
                            //ToAndFinish(context,ProductCategoryScreen());
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            radius: 20,
                            child: Padding(
                              padding: EdgeInsets.only(right: 9.w),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 80.w,
                        ),
                        Text(
                          " وصف المنتج",
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // SizedBox(width: 30.w,),
                      ],
                    ),
                    Hero(
                      tag:"image",

                      child: Image.asset(
                        "assets/images/product_1.png",
                        width: 200,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 100.w, top: 40.h),
                child: Text(
                  " سبورت ديفينس رول اون",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w)
                    .add(EdgeInsets.only(top: 20.h)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "50  مل",
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.cairo(
                        color: Color(0xff022B6C),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "السعر : 20.00\$",
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.cairo(
                        color: Color(0xff000000),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100.w, top: 40.h),
                child: Text(
                  "تفاصيل عن المنتج : ",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: SizedBox(
                  width: 300,
                  child: Text(
                    "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    textDirection: TextDirection.rtl,
                    maxLines: 3,
                    style: GoogleFonts.cairo(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w)
                    .add(EdgeInsets.only(top: 30.h)),
                child: FadeTransition(
                  opacity: _animation,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.h,
                          width: MediaQuery.of(context).size.width * 0.55,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "أضف الى العربة",
                                style: GoogleFonts.cairo(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 45.h,
                          width: MediaQuery.of(context).size.width * 0.16,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15.r),
                            //border: Border.all(color: primaryColor),
                          ),
                          child:
                              Icon(Icons.favorite, size: 25.r, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

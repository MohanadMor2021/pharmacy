import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/global_componnets.dart';
import '../screens/ineer_screens/details_screen.dart';




class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        To(context , DetailsScreen());
      },
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                height: 170.h,
                width: 150.w,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Container(
                    padding:  EdgeInsets.all(20.0.r),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.grey,
                            Colors.white,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.1, 1]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Hero(
                            tag:"image",
                          child: Image.asset(
                            "assets/images/product_1.png",
                            //height: 120,
                          ),
                        ),

                        Text(
                          "Name Name",
                          style: GoogleFonts.varelaRound(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$20.00',
                          style: GoogleFonts.varelaRound(
                            color:Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: -10,
            left: 30,
            child: Container(
              padding:
              EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                color:  Color(0xffffbf0b),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

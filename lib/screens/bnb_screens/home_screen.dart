import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:delayed_display/delayed_display.dart';

import '../../components/constant.dart';
import '../../components/global_componnets.dart';
import '../../items/brand_item.dart';
import '../../items/category_item.dart';
import '../../items/product_item.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController search = TextEditingController();


  List _carouselImages = [
    'assets/images/slider_1.png',
    'assets/images/slider_2.jpg',
    'assets/images/slider_3.jpg',
    'assets/images/slider_4.jpg',
    'assets/images/slider_5.jpg',
  ];


  List _offerImages = [
    "https://cdn.vectorstock.com/i/1000x1000/87/39/web-page-design-template-for-spring-sale-vector-23958739.webp",
    "https://cdn.vectorstock.com/i/1000x1000/54/23/cosmetic-ads-banner-realistic-make-up-pencil-vector-32005423.webp",
    "https://cdn.vectorstock.com/i/1000x1000/05/66/beauty-sale-template-with-cosmetic-products-gift-vector-23960566.webp",

  ];




  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffFFFAFA),
        appBar: AppBar(
        actions: [
          Padding(
            padding:  EdgeInsets.only(left: 10.w , top: 10.h),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              radius: 18,
              child: Icon(Icons.menu_outlined , color: subPrimaryColor,),
            ),
          )
        ],
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "        Yon",
                  textDirection: TextDirection.rtl,

                  style: GoogleFonts.cairo(
                    //textStyle: Theme.of(context).textTheme.headline4,
                    color: Color(0xffffbd22),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " Pharamol ",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                      fontSize: 18.sp,
                      color: subPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

          ],
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),

        body: SingleChildScrollView(

          child: Column(
            mainAxisSize: MainAxisSize.min,

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              DelayedDisplay(
                delay: Duration(milliseconds: 200),


                child: Padding(
                  padding:  EdgeInsets.only(left: 10.w , right: 10 , top: 20.h , bottom: 20.h),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: TextFormField(
                      controller: search,
                      decoration: InputDecoration(
                        hintText: "ما الذي تبحث عنه؟",
                        hintStyle: defaultTextStyleHint(),
                        prefixIcon:Icon(Icons.search_outlined , color: buttonTextColor, size: 30,),
                        border: InputBorder.none,
                      ),


                    ),
                  ),
                ),
              ),

              DelayedDisplay(
                delay: Duration(milliseconds: 300),


                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Container(
                      height: 160.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Carousel(
                       // boxFit: BoxFit.fill,
                        autoplay: true,
                        animationCurve: Curves.easeInCirc,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 5,
                        dotIncreasedColor: Colors.white70,
                        // dotBgColor: Colors.black.withOpacity(0.2),
                        dotPosition: DotPosition.bottomCenter,
                        showIndicator: true,

                        indicatorBgPadding: 5,
                        images: [
                          ExactAssetImage(_carouselImages[0]),
                          ExactAssetImage(_carouselImages[1]),
                          ExactAssetImage(_carouselImages[2]),
                          ExactAssetImage(_carouselImages[3]),
                          ExactAssetImage(_carouselImages[4]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              DelayedDisplay(
                delay: Duration(milliseconds: 400),

                child: Padding(
                  padding:  EdgeInsets.only(left: 220.w, top: 8.h, bottom: 8.h ),
                  child: homeScreenHeaders("الأقسام"),
                ),
              ),


              DelayedDisplay(
                delay: Duration(milliseconds: 500),
                child: Container(
                  alignment: Alignment.center,
                  child: AnimationLimiter(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 18)
                          .add(EdgeInsets.only(bottom:20)),

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.7,
                        // number of items per row
                        crossAxisCount: 4,
                        // vertical spacing between the items
                        mainAxisSpacing: 10,
                        // horizontal spacing between the items
                        crossAxisSpacing:10,
                      ),
                      // number of items in your list
                      itemCount: 8,
                      itemBuilder: (context, index) => CategoryItem(),
                    ),
                  ),
                ),
              ),

              DelayedDisplay(
                delay: Duration(milliseconds: 600),

                child: Padding(
                  padding:  EdgeInsets.only(left: 150.w, bottom: 8.h ),
                  child: homeScreenHeaders("ماركات مميزة"),
                ),
              ),

              Container(
                alignment: Alignment.center,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 18)
                      .add(EdgeInsets.only(bottom: 20)),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) => BrandItem(),
                ),
              ),

              DelayedDisplay(
                delay: Duration(milliseconds: 700),

                child: Padding(
                  padding:  EdgeInsets.only(left: 220.w, bottom: 8.h ),
                  child: homeScreenHeaders("عروض"),
                ),
              ),


              Container(
                height: 110.h,
                width: MediaQuery.of(context).size.width * 0.95.w,
                child: Swiper(
                  itemCount: _offerImages.length,
                  autoplay: true,
                  viewportFraction: 0.75,
                  scale: 0.9,
                  onTap: (index) {},
                  itemBuilder: (BuildContext ctx, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.blueGrey,
                        child: Image.network(
                          _offerImages[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),


              Padding(
                padding:  EdgeInsets.only(left: 200.w,top: 20.h , bottom: 8.h ),
                child: homeScreenHeaders("الأكثر مبيعا"),
              ),

              Container(
                height: 200.h,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                  //  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.only(left: 8.w  , bottom: 20.h),
                        child: ProductItem(),
                      );
                    }),
              ),

              // #4DC6A8
              // medicine














            ],
          ),
        ),
      ),
    );
  }
}

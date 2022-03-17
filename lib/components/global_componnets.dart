import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';






Widget myTextButton(String title,  fun ,{double? size})  =>

    InkWell(
      onTap: fun,
      child: Text(title,
        style: TextStyle(
          fontSize: size == null ? 18.sp : size.sp ,

        ),
      ),
    );

Widget svgImage(
    icon, {
      Color? color,
      double? size,
      double? width,
    }) =>
    SvgPicture.asset(
      'assets/images/$icon.svg',
      color: color,
      height: size,
      width: width ?? size,
    );


Future To(BuildContext context, Widget widget) async {
  return await Navigator.of(context)
      .push(MaterialPageRoute(builder: (BuildContext context) => widget));
}


Future ToAndFinish(BuildContext context, Widget widget) async {
  return Navigator.pushAndRemoveUntil<dynamic>(
    context,
    MaterialPageRoute<dynamic>(builder: (BuildContext context) => widget),
        (route) => false, //if you want to disable back feature set to false
  );
}


TextStyle defaultTextStyleHint() =>
    TextStyle(fontSize: 16.sp,
      color: buttonTextColor,
      fontWeight:FontWeight.w300,

    );






//
// Future<bool> myToast(String message, Color color) {
//   return Fluttertoast.showToast(
//     msg: message,
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 1,
//     backgroundColor: color??Colors.black38,
//     textColor: Colors.white,
//     fontSize: 16.0,
//   );
// }



Widget homeScreenHeaders (String title) =>
    Text(
      title,
      textAlign: TextAlign.start,
      style: GoogleFonts.cairo(
        color: Colors.black,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
    );

Widget CartRow(String title , String subTitle) =>

    Padding(
      padding:  EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
            style: GoogleFonts.cairo(
              fontSize: 15.sp,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),

          Text(subTitle,
            style: GoogleFonts.cairo(
              fontSize: 16.sp,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );






  Widget myButton(String title ,  fun) =>
           //
    InkWell(
      onTap: fun,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: primaryColor,
          // gradient: LinearGradient(
          //   colors: [
          //     Color(0xFF11f2d0),
          //       Color(0xFF1115f2),
          //   ],
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          // ),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              width: 5.w,
            ),
            Text(
              title,
              style: GoogleFonts.cairo(
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );

Widget defaultTextForm(
    TextEditingController controller,
    String hint,
    {
      Widget? icon,
      bool isPassword = false,
      String? defaultValidator,
      TextInputType type = TextInputType.text,
      ValueKey? key,
      Widget? prefixIcon,
      Widget? suffixIcon,

    }) =>
    Container(
      height: 70,
      color: Color(0xffFBF5F5),
      child: TextFormField(

        controller: controller,
        obscureText: isPassword,

        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
          // border: InputBorder.none,
          //= null ? Container() : suffixIcon
          suffixIcon: suffixIcon  == null ? null : suffixIcon ,
          hintText: hint,

          prefix: prefixIcon,
          hintStyle: defaultTextStyleHint(),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon ?? Container(),
              SizedBox(
                width: 15.w,
              )
            ],
          ),
          //icon:icon ,
          prefixIconConstraints:
          BoxConstraints(minWidth: 30.w, minHeight: 20.w),
        ),
        // validator: validator
        //     ??
        //         (str) {
        //       return defaultValidator;
        //     },
        keyboardType: type,

        validator: (value){
          if(value!.isEmpty){
            return
                "this field is required ";
          }  else{
            return null;
          }
        },
      ),
    );




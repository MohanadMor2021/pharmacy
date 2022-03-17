import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:pharm_care/auth/Login.dart';
import 'package:pharm_care/screens/bnb_screens/main_screen.dart';

import 'Onboarding/onboarding_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder:(){
      return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.grey,
              primaryTextTheme: TextTheme(
                  headline6: TextStyle(
                      color: Colors.white
                  )
              ),
              appBarTheme:AppBarTheme(
                  foregroundColor: Colors.white ,//here you can give the text color

                  backgroundColor: Colors.orange
              ),
              primaryColor: Colors.orange),
         home:  Directionality(
           textDirection: TextDirection.rtl,
           child:  MainScreen(),
         ),
       );
        }
    );

  }
  }



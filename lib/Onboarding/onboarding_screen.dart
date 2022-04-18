import 'package:flutter/material.dart';

import 'package:pharm_care/Onboarding/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../auth/Login.dart';
import '../components/constant.dart';
import 'onboarding_contents.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;
  List colors = [Color(0xffDAD3C8), Color(0xffFFE5DE), Color(0xffDCF6E6)];

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color:index==_currentPage?  primaryColor:Colors.black,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    double blockH = SizeConfig.blockH!;
    double blockV = SizeConfig.blockV!;

    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Container(
                    // color: colors[i],
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Container(
                           height: (MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top)*0.3,
                            child: Image.asset(
                              contents[i].image,
                              height: SizeConfig.blockV! * 35,
                            ),
                          ),
                          Divider(height: 3,thickness: 3,),
                          SizedBox(
                            height: (height >= 840) ? 60 : 30,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  contents[i].title,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.amiri(fontWeight: FontWeight.bold,letterSpacing: 5.0,fontSize: 25,color: Colors.black)
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  contents[i].desc,
                                  style:  GoogleFonts.amiri(fontWeight: FontWeight.normal,letterSpacing: 5.0,color: Colors.black54,fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (int index) => _buildDots(index: index),
                    ),
                  ),
                  _currentPage + 1 == contents.length
                      ? Padding(
                          padding: const EdgeInsets.all(30),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()),
                              );
                            },
                            child: Text("البدء",style: TextStyle(
                                fontFamily: "ElMessiri",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,letterSpacing:3.0
                            )),
                            style: ElevatedButton.styleFrom(
                              primary:primaryColor,
                              shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: (width <= 550)
                                  ? EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 20)
                                  : EdgeInsets.symmetric(
                                      horizontal: width * 0.2, vertical: 25),
                              textStyle:
                                  TextStyle(fontSize: (width <= 550) ? 13 : 17),
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: primaryColor
                                      ,borderRadius: BorderRadius.circular(20)
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    _controller.jumpToPage(2);
                                  },
                                  child: Text(
                                    "تخطي",
                                    style: TextStyle(
                                      fontFamily: "ElMessiri",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    elevation: 0,
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                              ),

                              ElevatedButton(
                                onPressed: () {
                                  _controller.nextPage(
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );

                                },
                                child: Text("التالي",style:GoogleFonts.cairo(fontWeight: FontWeight.bold,letterSpacing: 5.0),),
                                style: ElevatedButton.styleFrom(
                                  primary: primaryColor,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  elevation: 0,
                                  padding: (width <= 550)
                                      ? EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20)
                                      : EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 25),
                                  textStyle: TextStyle(
                                      fontSize: (width <= 550) ? 13 : 17),
                                ),
                              ),
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

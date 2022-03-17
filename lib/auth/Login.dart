import 'package:flutter/material.dart';
import 'OTP.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title: Text('تسجيل الدخول ',style:TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.bold,
          ), ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' تسجيل الدخول',
                style: TextStyle(fontSize: 30,
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.normal,
                ),textAlign: TextAlign.center,
              ),
              Text(
                ' يرجى إدخال رقم الهاتف',
                style: TextStyle(color: Colors.red,fontSize: 30,
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.normal,
                ),textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.0),
              SizedBox(height: 40.0),
              TextField(

                cursorColor: Colors.black,
                style: TextStyle(fontSize: 18.0, color: Colors.black),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: _controller,
                decoration: InputDecoration(

                  fillColor: Colors.orange.withOpacity(0.1),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  labelText: 'رقم الهاتف',
                  labelStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                  prefixIcon: Icon(Icons.phone),
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('+972'),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () {
                  // OtpPage(_controller.text)
                  Text('hello');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpPage(_controller.text)),
                  );
                },
                color: Colors.orangeAccent,
                child: Text('التحقق', style: TextStyle(color: Colors.black,fontSize: 20,
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.normal,
                )),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

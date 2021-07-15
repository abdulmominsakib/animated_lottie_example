import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

const Color primaryColor = Color(0xFFDF535B);
const Color accentColor = Color(0xFF4E10C9);

/* <---- 
The animations are provided by "pixeltrue.com".
 ----> */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Login Page',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
        accentColor: accentColor,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: primaryColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: accentColor,
              )),
        ),
        focusColor: primaryColor,
        highlightColor: accentColor,
        textSelectionTheme: TextSelectionThemeData(cursorColor: primaryColor),
        iconTheme: IconThemeData(color: primaryColor),
      ),
      home: LoginPageAnimated(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPageAnimated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            // To make sure it is responsive
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                  'assets/security.json',
                  frameRate: FrameRate.max,
                ),
                /* <---- Text Fields ----> */
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter your email',
                          hintText: 'your@email.com',
                          prefixIcon: Icon(Icons.email_rounded),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.vpn_key_rounded),
                          suffixIcon: Icon(Icons.visibility_off_rounded),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          child: Text('Login'),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

Widget buildEmail() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xcc3293f0),
                  ),
                  hintText: ('Email'),
                  hintStyle: TextStyle(color: Colors.black38)),
            )),
      ]);
}

Widget buildPass() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: const TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xcc3293f0),
                  ),
                  hintText: ('Password'),
                  hintStyle: TextStyle(color: Colors.black38)),
            )),
      ]);
}

Widget buildForgetPass() {
  return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black)),
        onPressed: () => print("Pressed on forget password"),
        child: const Text(
          'Forget Password',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ));
}

Widget buildLoginButton() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5),
    width: double.infinity,
    height: 65,
    child: ElevatedButton(
      onPressed: () => print("Login button Pressed"),
      child: const Text(
        'Login',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0x663293f0),
                      Color(0x993293f0),
                      Color(0xcc3293f0),
                      Color(0xff3293f0),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 210),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      buildEmail(),
                      SizedBox(
                        height: 20,
                      ),
                      buildPass(),
                      buildForgetPass(),
                      buildLoginButton()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

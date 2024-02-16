import 'package:aoun_project/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 1,
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: -20,
                    left: -18,
                    child: Image.asset(
                      'img/squares.png',
                      width: 220,
                      height: 220,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:151,top: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'أهلاً بك..',
                          style: TextStyle(color: Colors.indigo, fontSize: 40),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'تسجيل الدخول',
                          style: TextStyle(color: Colors.indigo, fontSize: 40),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Text(
                'الإيميل',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 35,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: "البريد الالكتروني",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 30),
              Text(
                'كلمة المرور',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 35,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 7),
              TextField(
                obscureText: true,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: "كلمة المرور",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SignUp();
                  }));
                },
                child: RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 22,
                    ),
                    children: [
                      TextSpan(
                        text: 'ليس لديك حساب؟ ',
                        style: TextStyle(
                          color: Colors.black54, // Gray color for the first part
                        ),
                      ),
                      TextSpan(
                        text: 'تسجيل جديد',
                        style: TextStyle(
                          color: Colors.indigo, // Purple color for the second part
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 70),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  color: Colors.indigo,
                  textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 100,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 30,
                    ),
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
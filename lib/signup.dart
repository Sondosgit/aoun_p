import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool allowLocation = false;

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
                      'assets/images/squares.png',
                      width: 220,
                      height: 220,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 179, top: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'مرحباً بك..',
                          style: TextStyle(color: Colors.indigo, fontSize: 40),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'تسجيل جديد',
                          style: TextStyle(color: Colors.indigo, fontSize: 40),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'الاسم',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 35,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.name,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: "الاسم",
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
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
                textDirection:TextDirection.rtl,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Checkbox(
                    value: allowLocation,
                    onChanged: (bool? value) {
                      setState(() {
                        allowLocation = value ?? false;
                      });
                    },
                    activeColor: Colors.grey,
                  ),
                  Text(
                    'هل تريد السماح بالموقع؟',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  color: Colors.indigo,
                  textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 11,
                    horizontal: 140,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Text(
                    'تسجيل',
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
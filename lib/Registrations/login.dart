import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  static const String id = 'Login';

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool rememberMe = false;

  String buttonText = "قم بإنشاء حساب الآن";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE6E6E6),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Text(
                "تسجيل الدخول ",
                style: GoogleFonts.almarai(
                  height: 5,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF515C6F),
                ),
              ),
              Container(
                height: 200,
                width: size.width * 0.8,
                margin: EdgeInsets.all(25.0),
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(27.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 5.0),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'USERNAME / EMAIL',
                        prefixIcon: Icon(Icons.person_outline_outlined),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: size.width * 0.8,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF008080),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'تسجيل دخول',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF008080),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(65.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Container(
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'هل نسيت كلمة السر؟',
                        style: GoogleFonts.almarai(
                          height: 1,
                          color: Color(0xFF515C6F),
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'تذكرني',
                          style: GoogleFonts.almarai(
                            height: 1,
                            color: Color(0xFF515C6F),
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Container(
                          child: Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value!;
                              });
                            },
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.only(right: 1),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'قم بإنشاء حساب الآن',
                            style: GoogleFonts.almarai(
                              height: 1,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF008080),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "لا تملك حساب؟",
                      style: GoogleFonts.almarai(
                        height: 1,
                        fontSize: 15.0,
                        color: const Color(0xFF515C6F),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '________________',
                      style: TextStyle(
                        color: Color(0xFF008080),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 1.0),
                    Text(
                      'أو',
                      style: TextStyle(
                        color: Color(0xFF008080),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 1.0),
                    Text(
                      '________________',
                      style: TextStyle(
                        color: Color(0xFF008080),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: size.width * 0.8,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF008080),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'سجل دخول عن طريق',
                        style: GoogleFonts.almarai(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: (Colors.white),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.alternate_email_sharp,
                        color: Colors.white,
                        size: 27.0,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF008080),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(65.0),
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

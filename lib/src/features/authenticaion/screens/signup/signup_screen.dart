import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _cpasswordController = TextEditingController();

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      Fluttertoast.showToast(
        msg: "Your account has been created!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      // ignore: use_build_context_synchronously
      context.go('/login');
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(
        msg: e.toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var obscure = true;
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C0C),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),

                  //BASICS
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Text(
                      'BASICS',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFFFFF)),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  // Welcome Back you've been missed!
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Welcome User!',
                      style: GoogleFonts.nunitoSans(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFFFFFFFF)),
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //Form
                  Form(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: _emailController,
                            cursorColor: Colors.white70,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.person,
                                color: Colors.white70,
                              ),
                              labelText: 'E-mail',
                              labelStyle:
                                  const TextStyle(color: Colors.white70),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0.4, color: Colors.white70),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: MyColors.white),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: obscure,
                            obscuringCharacter: '*',
                            cursorColor: Colors.white70,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.fingerprint_rounded,
                                color: Colors.white70,
                              ),
                              labelText: 'Password',
                              labelStyle:
                                  const TextStyle(color: Colors.white70),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0.4, color: Colors.white70),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: MyColors.white),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  obscure = !obscure;
                                },
                                child: const Icon(
                                  CupertinoIcons.eye_slash,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: _cpasswordController,
                            obscureText: obscure,
                            obscuringCharacter: '*',
                            cursorColor: Colors.white70,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.fingerprint_rounded,
                                color: Colors.white70,
                              ),
                              labelText: 'ConfirmPassword',
                              labelStyle:
                                  const TextStyle(color: Colors.white70),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0.4, color: Colors.white70),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: MyColors.white),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  obscure = !obscure;
                                },
                                child: const Icon(
                                  CupertinoIcons.eye_slash,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                try {
                                  if (_passwordController.value ==
                                      _cpasswordController.value) {
                                    signUp;
                                  } else {
                                    throw Exception(
                                      'Confirm Password Should Be The Same As Your Password',
                                    );
                                  }
                                } catch (e) {
                                  Fluttertoast.showToast(
                                    msg: e.toString(),
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.grey,
                                    textColor: Colors.white,
                                    fontSize: 16.0,
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.white,
                              ),
                              child: Text(
                                'SIGNUP',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: MyColors.black,
                                  letterSpacing: 0.4,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 6,
                  ),

                  Text(
                    'OR',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //Section 3

                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      icon: Image.asset(
                        'assets/images/login_page/google.png',
                        width: 20,
                      ),
                      onPressed: () {},
                      label: Text(
                        'Sign-In With Google',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: MyColors.white,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          width: 0.4,
                          color: MyColors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account? ',
                          style: GoogleFonts.nunitoSans(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xFFFFFFFF))),
                      TextButton(
                        onPressed: () {
                          context.pushReplacement('/login');
                        },
                        child: Text(
                          'Log In',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue,
                            letterSpacing: 0.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

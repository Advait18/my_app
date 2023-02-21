import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/src/common_widgets/auth/auth_service.dart';
import 'package:my_app/src/utils/colors.dart';

class Login extends StatefulWidget {
  final String email;
  final String password;
  const Login({super.key, required this.email, required this.password});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscure = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      // ignore: use_build_context_synchronously
      context.pushReplacement('/home');
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(
        msg: e.message.toString(),
        toastLength: Toast.LENGTH_SHORT,
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
    String _email = widget.email;
    String _password = widget.password;
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

                  //Welcome Back you've been missed!

                  Text(
                    'Welcome back you\'ve been missed!',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFFFFFFFF)),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // Form
                  Form(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            initialValue: _email,
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
                                  width: 0.4,
                                  color: Colors.white70,
                                ),
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
                            initialValue: _password,
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
                                  setState(() {
                                    obscure = !obscure;
                                  });
                                },
                                child: const Icon(
                                  CupertinoIcons.eye_slash,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () => context.go('/passreset'),
                              child: Text(
                                'Forgot Password?',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.blue,
                                  letterSpacing: 0.4,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: signIn,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.white,
                              ),
                              child: Text(
                                'LOGIN',
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

                  //section 3
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'OR',
                          style: GoogleFonts.nunitoSans(
                            color: MyColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          icon: Image.asset(
                            'assets/images/login_page/google.png',
                            width: 20,
                          ),
                          onPressed: () {
                            AuthService.signInWithGoogle();
                            context.pushReplacement('/home');
                          },
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
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Donn\'t Have An Account?',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: MyColors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () => context.pushReplacement('/signup'),
                            child: Text(
                              'Register',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

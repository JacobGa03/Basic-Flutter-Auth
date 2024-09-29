import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/components/action_button.dart';
import 'package:flutter_application_5/components/auth_tile.dart';
import 'package:flutter_application_5/components/text_field.dart';
import 'package:flutter_application_5/pages/register_page.dart';
import 'package:flutter_application_5/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Grab text entered by the user
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void wrongCredAlert() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Incorrect Credentials'),
          );
        });
  }

  // Call on Firebase to see if this users exists
  void signUserIn() async {
    // Show a little loading icon
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        wrongCredAlert();
      } else if (e.code == 'wrong-password') {
        wrongCredAlert();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 24),
                child: Icon(
                  Icons.lock,
                  size: 150,
                ),
              ),
              const Text('Welcome Back Valued User!'),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Your Email...',
                tec: emailController,
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Your Password...',
                tec: passwordController,
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?'),
                  ],
                ),
              ),
              ActionButton(text: 'Sign In', onTap: signUserIn),
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 24),
                child: Divider(),
              ),
              const Text('Or Continue With Trusted Spyware Provider'),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // All of our current auth providers
                  AuthTile(
                    imgPath: 'lib/images/google.png',
                    onTap: () => AuthService().signInWithGoogle(),
                  ),
                  AuthTile(
                    imgPath: 'lib/images/facebook.png',
                    onTap: () {},
                  ),
                  AuthTile(
                    imgPath: 'lib/images/microsoft.png',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('If You Don\'t Have an Account. '),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: const Text(
                        'Get One. (It\'s Free)',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            decorationColor: Colors.blue,
                            decoration: TextDecoration.underline),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/components/action_button.dart';
import 'package:flutter_application_5/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Grab the information that they enter
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confPasswordController = TextEditingController();

  // TODO: Function that adds new users to the firebase auth site
  void registerUser() async {
    // Show a little loading icon
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'email-already-in-use') {
        print('email already being used');
      } else {
        print('something else went wrong');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 24),
                child: Icon(
                  Icons.person_add,
                  size: 150,
                ),
              ),
              CustomTextField(
                  hintText: 'Your Email...',
                  tec: emailController,
                  obscureText: false),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hintText: 'Your Password...',
                  tec: passwordController,
                  obscureText: true),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hintText: 'Confirm Your Password...',
                  tec: confPasswordController,
                  obscureText: true),
              const SizedBox(
                height: 10,
              ),
              ActionButton(text: 'Create Account', onTap: registerUser),
            ],
          ),
        ),
      )),
    );
  }
}

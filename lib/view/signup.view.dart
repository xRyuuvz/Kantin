import 'package:flutter/material.dart';
import 'package:wisaga/utils/global.colors.dart';
import 'package:wisaga/view/widgets/button.global.dart';
import 'package:wisaga/view/widgets/text.form.global.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);
  TextEditingController get emailController => TextEditingController();
  TextEditingController get passwordController => TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'KantinWisaga',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Sign Up for an account',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                //// Email Input
                TextFormGlobal(
                  controller: emailController, 
                  text: 'Email', 
                  obscure: false, 
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 13),
                //// Password Input
                TextFormGlobal(
                  controller: passwordController, 
                  text: 'Password', 
                  textInputType: TextInputType.text, 
                  obscure: true
                ),
                const SizedBox(height: 13),
                //// Password Input
                TextFormGlobal(
                  controller: passwordController, 
                  text: 'Confirm Password', 
                  textInputType: TextInputType.text, 
                  obscure: true
                ),
                const SizedBox(height: 13),
                const ButtonGlobal(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 10), // Adjust the top padding here
        child: Container(
          height: 50,
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
              ),
              InkWell(
                onTap: () {
                  // Navigate to LoginView when the "Log In" is tapped
                  Navigator.pop(context);
                },
                child: Text(
                  ' Log In',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
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

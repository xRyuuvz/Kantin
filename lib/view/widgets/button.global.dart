import 'package:flutter/material.dart';
import 'package:wisaga/utils/global.colors.dart';
import 'package:wisaga/view/home.view.dart';

class ButtonGlobal extends StatefulWidget {
  const ButtonGlobal({Key? key}) : super(key: key);

  @override
  _ButtonGlobalState createState() => _ButtonGlobalState();
}

class _ButtonGlobalState extends State<ButtonGlobal> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // If form is valid, navigate to ProductView
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeView()),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        primary: GlobalColors.mainColor,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        shadowColor: Colors.black.withOpacity(0.1),
        elevation: 10,
      ),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        child: const Text(
          'Sign In',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

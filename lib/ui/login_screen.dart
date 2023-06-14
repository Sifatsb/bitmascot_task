import 'package:bitmascot_task/ui/dashboard_screen.dart';
import 'package:flutter/material.dart';
import '../configure/app_colors.dart';
import '../configure/app_widgets.dart';
import '../controller/controller_initializer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    if (!RegExp(emailRegex).hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomCenter,
                begin: const Alignment(0.0, 2.0 / 3.0),
                colors: [
                  const Color(0xFFFFFFFF), // White
                  Colors.blueAccent.withOpacity(0.1),
                ],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/logo.png',),
                      const Text(
                        'Log in to WebCommander',
                        style: TextStyle(
                            color: AppColors.secondaryTextColor, fontSize: 18),
                      ),
                      const Text(
                        'A complete eCommerce platform',
                        style: TextStyle(
                            color: AppColors.secondaryTextColor, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h*0.12,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: loginController.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                            controller: loginController.emailTextController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                            validator: _validateEmail),
                        const SizedBox(height: 16.0),
                        TextFormField(
                            controller: loginController.passwordTextController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                            validator: _validatePassword),
                        const SizedBox(height: 32.0),
                        Padding(
                          padding: EdgeInsets.only(bottom: h * 0.04),
                          child: AppWidgets().button(
                            context,
                            text: 'Login',
                            height: h * 0.07,
                            width: w,
                            radius: 10.0,
                            color: AppColors.blueColor,
                            style: AppStyle.title2,
                            press: () {
                              if (loginController.formKey.currentState?.validate() == true) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const DashBoardScreen(),),);
                              }
                            },
                          ),
                        ),
                        const Center(
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: AppColors.blueColor, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

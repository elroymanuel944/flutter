import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_home2/controller/my_button.dart';
import 'package:login_home2/controller/my_textfield.dart';
import 'package:login_home2/view/sign_up_page/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        // title: Text("LogIn Page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Sign in to Your Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              // username
              SizedBox(height: 30),
              MyTextfield(
                controller: usernameController,
                hintText: "Your Email Address",
                obscureText: false,
              ),

              //password
              SizedBox(height: 30),
              MyTextfield(
                controller: passwordController,
                hintText: " Your Password",
                obscureText: true,
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text("Remember me"),
                    Spacer(),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              //Sign In button
              SizedBox(height: 30),
              MyButton(),

              // Dont sign up
              SizedBox(height: 280),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an acoount?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ));
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(color: Colors.blue),
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

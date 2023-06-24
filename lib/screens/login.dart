import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:themedata_practice/screens/welcome.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFC6FF),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                "assets/logins.json",
                height: 200,
              ),
              const SizedBox(
                height: 15,
              ),

              const Text(
                "Login",
              ),

              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  label: Text("Email Id"),
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              //
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  label: Text("Password"),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return WelcomePage();
                        },
                      ),
                    );
                  },
                  child: const Text("login")),
            ],
          ),
        ),
      ),
    );
  }
}

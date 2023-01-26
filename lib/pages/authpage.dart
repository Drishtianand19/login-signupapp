import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/pages/login_or_register.dart';
import 'Homepage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(//stream builder - stream se data beh kr aa rha hai
        stream: FirebaseAuth.instance.authStateChanges(),//authstatechanges method tells us whether a user is logged in or not and instance is the current object
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {//kya snapshot mein mere user ka data hai
            return HomePage();
          }

          // user is NOT logged in
          else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}

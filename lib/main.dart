import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/screens/homepage.dart';
import 'package:flutter_firebase_auth/screens/reset_password.dart';
import 'package:flutter_firebase_auth/screens/signin.dart';
import 'package:flutter_firebase_auth/screens/signup.dart';
import 'package:flutter_firebase_auth/utils/authentication.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //Authentication.initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Authentication.initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'Flutter Firebase Authentication Tutorial',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const Signin(),
            );
          }
          return CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange));
        });
  }
}

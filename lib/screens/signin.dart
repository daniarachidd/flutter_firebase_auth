import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/screens/reset_password.dart';
import 'package:flutter_firebase_auth/screens/signup.dart';
import 'package:flutter_firebase_auth/utils/authentication.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  void initState() {
    //ToDo: checkSignedIn
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black45,
        title: Text('Flutter Firebase Authentication'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          children: [
            Center(
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 50),
            Container(
          padding: EdgeInsets.only(bottom: 0),
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
              ),
              onPressed: () {
                Authentication.signinWithGoogle(context: context);
                print('logged in with google');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign in with Google',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black45
                    ),
                  ),
                ],
              )),
        ),
            SizedBox(height: 20,),
            Divider(thickness: 2,),
            SizedBox(height: 20,),

            TextField(
              decoration: InputDecoration(
                  hintText: "example@gmail.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)))),

            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)))),

            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ResetPassword())
                );
              },
              child: Text(
                'forgot password?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black45),
                  ),
                  onPressed: () {
                    //ToDo: Signin
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
            ),
            SizedBox(height: 15,),
            Text('Don\'t have an account?'),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Signup())
                );
              },
              child: Text(
                'Sign up Now',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

          ],
        ),
      )

    );
  }
}

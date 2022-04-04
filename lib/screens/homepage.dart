import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_firebase_auth/screens/signin.dart';
import 'package:flutter_firebase_auth/screens/signup.dart';
import 'package:flutter_firebase_auth/utils/authentication.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black45,
        title: Text('Flutter Firebase Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Home Page',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 0),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black45),
                  ),
                  onPressed: () {
                    //ToDo: signout

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign out',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

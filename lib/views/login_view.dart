// ignore: unused_import
// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            hoverColor: Colors.green,
            splashColor: Colors.orangeAccent,
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.deepOrangeAccent,
            )),
        title: const Center(
          child: Text('Log In Page'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/gotoregister/', (route) => false);
            },
            icon: const Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset(
              'assets/images/sphere.jpg',
              height: height / 2.5,
              width: double.infinity,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: height * 0.028,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Enter your Email'),
              ),
            ),
            TextField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hoverColor: Colors.black,
                icon: Icon(
                  Icons.email,
                ),
                hintText: 'Enter your Email Here!',
                hintStyle: TextStyle(
                  color: Colors.orange,
                ),
              ),
              style: const TextStyle(color: Colors.orange),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: height * 0.028,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Enter your Password'),
              ),
            ),
            TextField(
              controller: _password,
              style: const TextStyle(color: Colors.orange),
              obscureText: true,
              decoration: const InputDecoration(
                icon: Icon(Icons.password_rounded),
                hintText: ("Enter your Password here!"),
                hintStyle: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                final email = _email.text;
                final password = _password.text;
                try {
                  final userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: email, password: password);
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/gotohome/', (route) => false);
                  devtools.log(userCredential.toString());
                } on FirebaseAuthException catch (e) {
                  devtools.log(e.toString());
                }
              },
              child: const Text(
                'Log In',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

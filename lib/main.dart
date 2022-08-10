import 'package:flutter/material.dart';
import 'package:vedantapp/views/home_view.dart';
import 'package:vedantapp/views/login_view.dart';
import 'package:vedantapp/views/ragister_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OWN TRY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginView(),
      routes: {
        '/gotologin/': (context) => const LoginView(),
        '/gotohome/': (context) => const HomePagee(),
        '/gotoregister/':(context)=>const RegisterView(),
      },
    );
  }
}

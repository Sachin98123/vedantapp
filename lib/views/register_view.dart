import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.85),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // leading: IconButton(
        //     hoverColor: Colors.green,
        //     splashColor: Colors.orangeAccent,
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.,
        //       color: Colors.deepOrangeAccent,
        //     )),
        title: const Center(child: Text('Log In Page')),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.list),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/sphere.jpg',
            height: height / 2.5,
            width: double.infinity,
          ),
          SizedBox(
            height: height * 0.018,
          ),
          SizedBox(
            height: height * .2,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Enter your Email'),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                ),
                hintText: 'Enter your Email Here!'),
            style: TextStyle(color: Colors.black26),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.password_rounded),
              hintText: "Enter your Password here!",
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vedantapp/views/component/new_arrival.dart';
import 'package:vedantapp/views/component/search_form.dart';
import 'package:vedantapp/views/login_view.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          splashColor: Colors.brown,
          splashRadius: 20,
          hoverColor: Colors.cyan,
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.orange,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.location_on,
              color: Colors.black26,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'BIRATNAGAR, NEPAL',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            splashRadius: 20,
            splashColor: Colors.grey,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginView()));
            },
            icon: const Icon(Icons.notifications),
            color: Colors.orange,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "WELCOME !",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Explore and Get Whatever you Want ;)',
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Searchform(),
            ),
            Categories(),
            SizedBox(
              height: 10,
            ),
            NewArrival(),
            SizedBox(
              height: 10,
            ),
            Popular(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "love ",
            icon: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/gotologin/', (route) => false);
              },
              icon: const Icon(Icons.favorite_border_rounded),
            ),
          ),
          const BottomNavigationBarItem(
            label: "hello",
            icon: Icon(Icons.more),
          ),
          const BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(Icons.notification_add_rounded),
          ),
        ],
      ),
    );
  }
}

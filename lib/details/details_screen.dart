import 'package:flutter/material.dart';
import 'package:vedantapp/views/component/listof_shirts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);
  final Products product;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            splashRadius: 20,
            splashColor: Colors.red,
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Colors.black12,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: height / 2.5,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 50, 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          "\$${product.price}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Liverpool FC is arguably the most dominant and iconic club in English football history. They field top players from around the world, host passionate fans at Anfield for every home match as well as boasting one of the largest number of supporters\’ groups around the globe, and have one of the most famous soccer kits in the world.The club’s nickname is The Reds, and for good reason.That nickname is a tribute to their famous home kit; red jersey, red shorts, and – you guessed it red socks!",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        'colors',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ColorDot(
                          color: Colors.brown,
                          press: () {},
                          isactive: false,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ColorDot(
                          color: Colors.blue,
                          press: () {},
                          isactive: false,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ColorDot(
                          color: Colors.black,
                          press: () {},
                          isactive: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          shape: const StadiumBorder()),
                      onPressed: () {},
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.press,
    required this.color,
    required this.isactive,
  }) : super(key: key);
  final VoidCallback press;
  final Color color;
  final bool isactive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isactive ? Colors.deepOrange : Colors.transparent,
          ),
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}

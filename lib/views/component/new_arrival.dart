import 'package:flutter/material.dart';
import 'package:vedantapp/constant/routes.dart';
import 'package:vedantapp/details/details_screen.dart';
import 'package:vedantapp/views/component/listof_shirts.dart';
import 'package:vedantapp/views/component/section_title.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
  }) : super(key: key);
  final String image, title;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 220,
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Image.asset(image, height: 200, width: 200),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "\$$price",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectTitle(
          title: 'New Arrival',
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                shirtlist.length,
                (index) => ProductCard(
                  image: shirtlist[index].image,
                  title: shirtlist[index].title,
                  price: shirtlist[index].price,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          product: shirtlist[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectTitle(
          title: 'Popular',
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                shirtlist.length,
                (index) => ProductCard(
                  image: shirtlist[index].image,
                  title: shirtlist[index].title,
                  price: shirtlist[index].price,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          product: shirtlist[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

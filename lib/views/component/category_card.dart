import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                icon,
                height: 40,
                width: 40,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(title)
            ],
          ),
        ));
  }
}

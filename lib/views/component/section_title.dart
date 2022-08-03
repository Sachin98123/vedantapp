import 'package:flutter/material.dart';

class SelectTitle extends StatelessWidget {
  const SelectTitle({
    Key? key,
    required this.title,
    required this.pressSeeAll,
  }) : super(key: key);
  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black87,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'See More',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

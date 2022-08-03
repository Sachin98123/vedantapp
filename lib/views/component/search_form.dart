import 'package:flutter/material.dart';
import 'package:vedantapp/views/component/category_card.dart';
import 'package:vedantapp/views/component/list_of_object.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          listharu.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CategoryCard(
              icon: listharu[index].icon,
              title: listharu[index].title,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class Searchform extends StatelessWidget {
  const Searchform({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Cant find the product? SEARCH HERE!!',
            hintStyle: const TextStyle(
                color: Colors.black38,
                fontSize: 12,
                fontWeight: FontWeight.bold),
            filled: true,
            fillColor: Colors.white,
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black45,
                  ),
                )),
            suffixIcon: SizedBox(
              height: 16,
              width: 16,
              child: ElevatedButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.black12),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {},
                child: const Icon(
                  Icons.menu_open_outlined,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            )),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(25),
    ),
    borderSide: BorderSide.none);

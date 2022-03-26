// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class CategoryName {
  String urlImage = "";
  String title = "";

  CategoryName({this.urlImage = '', this.title = ''});
}

class _HorizontalListState extends State<HorizontalList> {
  List<CategoryName> items = [
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1624209190904-aca680ededc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=793&q=80',
      title: 'Appliances',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1624209190904-aca680ededc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=793&q=80',
      title: 'Appliances',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1624209190904-aca680ededc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=793&q=80',
      title: 'Appliances',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1624209190904-aca680ededc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=793&q=80',
      title: 'Appliances',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1624209190904-aca680ededc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=793&q=80',
      title: 'Appliances',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1624209190904-aca680ededc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=793&q=80',
      title: 'Appliances',
    ),
  ];

  @override
  Widget build(BuildContext context) => Container(
      padding: EdgeInsets.all(10),
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (context, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) => CategoryCard(items: items[index]),
      ));

  Widget CategoryCard({
    required CategoryName items,
  }) =>
      Container(
          width: 50,
          height: 100,
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      items.urlImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Appliances',
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ));
}

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
          'https://images.unsplash.com/photo-1567581935884-3349723552ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      title: 'Mobile',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1523170335258-f5ed11844a49?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80',
      title: 'Watches',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1508296695146-257a814070b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
      title: 'Accessories',
    ),
    CategoryName(
      urlImage:
          'http://blogs.windows.com/wp-content/uploads/sites/2/2014/04/p55t_5F00_488B697C.jpg',
      title: 'Laptop/Pc',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1542744095-291d1f67b221?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: 'Cars/Motors',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1623387641168-d9803ddd3f35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: 'Pets',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1543168256-418811576931?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: 'Groceries',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1618354691373-d851c5c3a990?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80',
      title: 'Apparels',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: 'Furnitures',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1533925871-9ec709a333f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      title: 'Properties',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1552168324-d612d77725e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80',
      title: 'Camera',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1599623560574-39d485900c95?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: 'Toys',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1607870411590-d5e9e06da09a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: 'Tools',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1513001900722-370f803f498d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      title: 'Books',
    ),
    CategoryName(
      urlImage:
          'https://images.unsplash.com/photo-1625093742435-6fa192b6fb10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1189&q=80',
      title: 'Cosmetics',
    ),
  ];

  @override
  Widget build(BuildContext context) => Container(
      padding: EdgeInsets.all(10),
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 16,
        separatorBuilder: (context, _) => const SizedBox(width: 15),
        itemBuilder: (context, index) => CategoryCard(items: items[index]),
      ));

  Widget CategoryCard({
    required CategoryName items,
  }) =>
      Container(
          width: 60,
          height: 100,
          // color: Colors.grey[300],
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
              Text(
                items.title,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ));
}

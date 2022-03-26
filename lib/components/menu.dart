import 'package:flutter/material.dart';

class newDrawer extends StatefulWidget {
  const newDrawer({Key? key}) : super(key: key);

  @override
  State<newDrawer> createState() => _newDrawerState();
}

class _newDrawerState extends State<newDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Thirdy Gayares'),
          accountEmail: Text('gayaresthird@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 22, 1, 97),
          ),
        ),
        //body
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Home Page'),
            leading: Icon(Icons.home),
          ),
        ),

        InkWell(
          onTap: () {},
          child:
              ListTile(title: Text('My Account'), leading: Icon(Icons.person)),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('My Order'),
            leading: Icon(Icons.shopping_basket),
          ),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Categories'),
            leading: Icon(Icons.dashboard),
          ),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite),
          ),
        ),
        Divider(),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings, color: Colors.blue),
          ),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('About'),
            leading: Icon(
              Icons.help,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}

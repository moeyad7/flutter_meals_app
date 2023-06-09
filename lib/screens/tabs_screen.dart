import 'package:flutter/material.dart';
import './favorites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.category),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favorites',
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
 //           FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}

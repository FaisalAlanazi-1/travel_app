import 'package:flutter/material.dart';
import '../widget/app_drawer.dart';
import '../Screens/Categories_Screen.dart';
import '../Screens/Favorits.dart';

class TabsScreen extends StatefulWidget {
  
  final List Favorite ;


  const TabsScreen(  this.Favorite);  

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  late final List<Map<String, Object>> _screen ;
  @override
  void initState() {
   _screen = [
    {'Screen': CategoriesScreen(), 'Title': 'تصنيفات الرحلات'},
    {'Screen': Favorites(
      widget.Favorite 
    ), 'Title': 'الرحلات المفضلة'},
  ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text(
          _screen[_selectedScreenIndex]['Title'] as String,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: _screen[_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            _selectedScreenIndex = value;
          });
        },
        currentIndex: _selectedScreenIndex,
        backgroundColor: Colors.orange,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'ألتصنيفات',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'ألمفضلة'),
        ],
      ),
    );
  }
}

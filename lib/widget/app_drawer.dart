import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Filters_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  ListTile buildListTile(String title, IconData icon, Function func) {
    return ListTile(
      textColor: Colors.black,
      iconColor: Colors.orange,
      title: Text(title),
      leading: Icon(icon),
      onTap: () {
        func();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15),
            color: Colors.orange,
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            child: Text(
              'دليلك سياحي',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 15),
          buildListTile('الرحلات', Icons.card_travel, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('الفلترة', Icons.filter_list, () {
            Navigator.of(
              context,
            ).pushReplacementNamed(FiltersScreen.ScreenRout);
          }),
        ],
      ),
    );
  }
}

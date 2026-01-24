import 'package:flutter/material.dart';
import '../Screens/Category_trips_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;

  const CategoryItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.id,
  });
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryTripsScreen.ScreenRout,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(imageUrl, height: 250, fit: BoxFit.cover),
          ),

          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(20),
            ),

            child: Text(
              title,
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

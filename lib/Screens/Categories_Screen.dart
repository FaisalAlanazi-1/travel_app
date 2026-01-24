import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: categoriesData
            .map(
              (categoryData) => CategoryItem(
                title: categoryData.title,
                imageUrl: categoryData.imageUrl,
                id: categoryData.id,
              ),
            )
            .toList(),
      ),
    );
  }
}

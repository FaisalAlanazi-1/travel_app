import 'package:flutter/material.dart';
import '../widget/trip_item.dart';

class Favorites extends StatelessWidget {
 
    final List Favorite ;


  const Favorites( this.Favorite);

  @override
  Widget build(BuildContext context) {
    if(Favorite.isEmpty){
      return Center(
      child: Text('ليس لديك اي رحلات مفضلة'),
    );
    }else{
      return ListView.builder(
        itemBuilder: (context, index) {
          return TripItem(
            id: Favorite[index].id,
            title: Favorite[index].title,
            imageUrl: Favorite[index].imageUrl,
            duration: Favorite[index].duration,
            tripType: Favorite[index].tripType,
            season: Favorite[index].season,
            // removeItem: removeItem,
          );
        },
        itemCount: Favorite.length,
      );
    }
  }
}
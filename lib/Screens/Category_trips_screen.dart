import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../widget/trip_item.dart';
 

class CategoryTripsScreen extends StatefulWidget {
  static const ScreenRout = 'Category-trips';


 final List<Trip> availbleTrips ;
 


  const CategoryTripsScreen({super.key, required this.availbleTrips}); 

  @override
  State<CategoryTripsScreen> createState() => _CategoryTripsScreenState();
}

class _CategoryTripsScreenState extends State<CategoryTripsScreen> {
  late String categoryTitle;
  late List<Trip> displayTrips;
 bool _instilize = false;



  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!_instilize) {
      final routArguments =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;

      categoryTitle = routArguments['title']!;
      final String categoryId = routArguments['id']!;
      displayTrips = widget.availbleTrips.where((trip) {
        return trip.categories.contains(categoryId);
      }).toList();
      super.didChangeDependencies();
    }
    _instilize = true ; 
  }

  void removeItem(String tripid) {
    setState(() {
      displayTrips.removeWhere((trip) => trip.id == tripid);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          categoryTitle,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TripItem(
            id: displayTrips[index].id,
            title: displayTrips[index].title,
            imageUrl: displayTrips[index].imageUrl,
            duration: displayTrips[index].duration,
            tripType: displayTrips[index].tripType,
            season: displayTrips[index].season,
            // removeItem: removeItem,
          );
        },
        itemCount: displayTrips.length,
      ),
    );
  }
}

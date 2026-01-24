import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../app_data.dart';

class TripDetilesScreen extends StatelessWidget {
  static const ScreenRout = 'TripDetilesScreen';
  final Function mangeFavorite;
  final Function isFavorite ; 

  const TripDetilesScreen(this.mangeFavorite , this.isFavorite);
  Widget buildTitle(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      alignment: Alignment.topRight,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.orange,
        ),
      ),
    );
  }

  Widget buildDetails(ListView child) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 200,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final String tripId = ModalRoute.of(context)!.settings.arguments as String;
    final Trip trip = Trips_data.firstWhere((element) => element.id == tripId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          trip.title,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(trip.imageUrl, fit: BoxFit.cover),
            ),

            buildTitle('ألانشطة'),
            buildDetails(
              ListView.builder(
                itemCount: trip.activities.length,
                itemBuilder: (context, index) => Card(
                  elevation: 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(trip.activities[index]),
                  ),
                ),
              ),
            ),
            buildTitle('ألبرنامج اليومي'),
            buildDetails(
              ListView.builder(
                itemCount: trip.program.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      title: Text(trip.program[index]),
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.orange,
                        child: Text(
                          ' يوم ${index + 1} ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: isFavorite(tripId) ? Icon(Icons.star) : Icon(Icons.star_border),
        onPressed: () => mangeFavorite(tripId),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './app_data.dart';
import './models/trip.dart';
import '../Screens/Filters_screen.dart';
import './Screens/Tabs_Screen.dart';
import '../Screens/Trip_Detiles_Screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../Screens/Category_trips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  List<Trip> Trips = Trips_data;
  List<Trip> Favorite = [];

  Map<String, bool> filters = {
    'Summer': false,
    'Winter': false,
    'Familys': false,
  };
  void changeFilter(Map<String, bool> newFilter) {
    setState(() {
      filters = newFilter;
      Trips = Trips_data.where((trip) {
        if (filters['Summer'] == true && trip.isInSummer != true) {
          return false;
        }
        if (filters['Winter'] == true && trip.isInWinter != true) {
          return false;
        }
        if (filters['Familys'] == true && trip.isForFamilies != true) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void mangeFavorite(String tripId) {
    final int indexFavorite = Favorite.indexWhere((trip) => trip.id == tripId);
    if (indexFavorite >= 0) {
      setState(() {
        Favorite.removeAt(indexFavorite);
      });
    } else {
      setState(() {
        Favorite.add(Trips.firstWhere((trip) => trip.id == tripId));
      });
    }
  }

  bool isFavorite(String tripId) {
    return Favorite.any((trip) => trip.id == tripId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar'),
      supportedLocales: [
        Locale('ar'), // Arabic
        Locale('en'), // English
      ],
      debugShowCheckedModeBanner: false,
      title: 'travilApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // fontFamily: 'ElMessiri',
        // textTheme: ThemeData.light().textTheme.copyWith(
        //   headlineMedium: TextStyle(
        //     color: Colors.blue,
        //     fontSize: 24,
        //     fontFamily: 'ElMessiri',
        //     fontWeight: FontWeight.bold,
        //   ),
        //   headlineLarge: TextStyle(
        //     color: Colors.blue,
        //     fontSize: 26,
        //     fontFamily: 'ElMessiri',
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
      ),

      routes: {
        '/': (context) => TabsScreen(Favorite),
        CategoryTripsScreen.ScreenRout: (context) =>
            CategoryTripsScreen(availbleTrips: Trips),
        TripDetilesScreen.ScreenRout: (context) =>
            TripDetilesScreen(mangeFavorite, isFavorite),
        FiltersScreen.ScreenRout: (context) =>
            FiltersScreen(currntFilter: filters, changeFilters: changeFilter),
      },
    );
  }
}

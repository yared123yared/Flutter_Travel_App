import 'package:flutter/material.dart';
import 'file:///C:/Users/yared/AndroidStudioProjects/travel_app/lib/Screen/homepage.dart';

import 'Screen/place_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
//      home: HomePage(),
      initialRoute:'/',
      routes: {
        '/' : (ctx)=>HomePage(),
        PlaceDetail.routeName : (ctx) => PlaceDetail(),
//        MealDetailScreen.routeName : (ctx) => MealDetailScreen(this._toggleFormat, this._isMealFavorite),
//        FiltersScreen.routeName : (ctx) => FiltersScreen(_filters,_setFilters),
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx)=>HomePage());
      },
    );
  }
}




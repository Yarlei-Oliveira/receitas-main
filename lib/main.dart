import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/categories_meals_screan.dart';
import './utils/app_routs.dart';
import './screens/meal_detail_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20,

          )
        ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber)
      ),
      home: CategoriesScreen(),
      routes: {
        AppRouts.CATEGORY_MEAL:(context) => CategoriesMealsScrean(),
        AppRouts.HOME:(context) => CategoriesMealsScrean(),
        AppRouts.MEAL_DETAIL:(context) => MealDetailScreen(),
      },
    );
  }
}



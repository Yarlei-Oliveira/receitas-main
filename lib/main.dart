import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screan.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import './utils/app_routs.dart';
import './screens/tab_screen.dart';
import './screens/settings_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primaryColor: Colors.pink,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
              )),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.amber)),
      home: TabsScreen(),
      routes: {
        AppRouts.SETTINGS: (context) => SettingsScreen(),
        AppRouts.HOME: (context) => TabsScreen(),
        AppRouts.CATEGORY_MEAL: (context) => CategoriesMealsScrean(),
        AppRouts.MEAL_DETAIL: (context) => MealDetailScreen(),
      },
      /*  onGenerateRoute: (settings) {
          if (settings.name == '/tanto_faz') {
            return null;
          } else if (settings.name == '/sei_lá') {
            return null;
          } else {
            return MaterialPageRoute(builder: (_) {
              return MyApp();
            });
          }
        }, */
      /* onUnknownRoute: (settings){
          return MaterialPageRoute(builder: (_){
            return MyApp();
          });
        }, */
    );
  }
}

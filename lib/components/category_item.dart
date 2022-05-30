import 'package:flutter/material.dart';
import '../models/category.dart';
import '../utils/app_routs.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);
  void _SelectCategory(BuildContext context) {
    /* Navigator.of(context).push(MaterialPageRoute(
      builder: (_) {
        return CategoriesMealsScrean(category);
      },
    )); */

    Navigator.of(context).pushNamed(
      AppRouts.CATEGORY_MEAL,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: (() {
        _SelectCategory(context);
      }),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}

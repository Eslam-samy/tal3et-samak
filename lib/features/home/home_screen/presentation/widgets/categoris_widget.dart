import 'package:flutter/material.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/category_entity.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key, required this.categories});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
  final List<CategoryEntity> categories;
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  var _selectedIndex = 0;
  void _chamgeIndex(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 35,
      child: ListView.separated(
        itemCount: widget.categories.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(52),
                  color: Colors.white,
                  border: Border.all(color: primaryColor, width: 1)),
              height: 35,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 19),
                child: Center(
                  child: Text(widget.categories[index].name!,
                      style: Theme.of(context).textTheme.bodySmall),
                ),
              ),
            )),
      ),
    );
  }
}

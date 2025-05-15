import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data.dart';
import 'category_item.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height:110.h,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryIconList.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
                onTap: (){
                  setState(() {
                    _selectedIndex=index;
                  });
                },
                child: CategoryItem(image: categoryIconList[index], categoryName: name[index], isSelected: _selectedIndex==index? true:false,));
          },
        ),
      ),
    );
  }
}

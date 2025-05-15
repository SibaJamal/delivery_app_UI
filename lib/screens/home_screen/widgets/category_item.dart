import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatefulWidget {
  final String image;
  final String categoryName;
  final bool isSelected;
  const CategoryItem({super.key, required this.image, required this.categoryName, required this.isSelected});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: widget.isSelected
              ? Colors.white
                  : Colors.white70,
                borderRadius: const BorderRadius.all(Radius.circular(34)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ImageIcon(AssetImage(widget.image,),color: widget.isSelected ?Colors.black: const Color(0xffb7b7a4),),
              )),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Text(widget.categoryName,style: TextStyle(color: widget.isSelected ? Colors.black
                : Colors.grey,),),
          ),
        ],
      ),
    );
  }
}

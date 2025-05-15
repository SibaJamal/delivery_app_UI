import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
      child: Row(
        children: [
          IconButton(
            icon:const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Text('Back',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp)),
          const Expanded(
            child: SizedBox(),
          ),
          const Icon(Icons.shopping_cart_outlined),
          Padding(
            padding: EdgeInsets.all(16.0.r),
            child: const Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}

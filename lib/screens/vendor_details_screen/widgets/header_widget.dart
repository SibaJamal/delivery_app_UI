import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core_widgets/main_header.dart';

class HeaderWidget extends StatelessWidget {
  final Map<String, dynamic> product;
  const HeaderWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
      ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          child: Image.asset('assets/images/temp_vendor_bg.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3)),
      const MainHeader(),
      Positioned(
        right: 0,
        bottom: -3,
        child: Container(
          padding: EdgeInsets.only(left: 16.r),
          width: 390,
          height: 160.h,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50), topLeft: Radius.circular(50)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0.r),
                      child: Text(
                        product['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.sp),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0.r),
                          child: Icon(
                            Icons.star,
                            size: 16.r,
                            color: Colors.amberAccent,
                          ),
                        ),
                        Text(
                          product['rating'].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.r),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0.r),
                          child: Text(
                            '* fast food *',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 14.sp),
                          ),
                        ),
                        Text(
                          '\$\$',
                          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              child: Padding(
                                padding: EdgeInsets.all(8.0.r),
                                child: const Text(
                                  'Free Delivery',
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '21 views',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 14.sp),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Hero(
                        tag: product['name'],
                        child: Image.asset(
                          product['imagePath'],
                          width: 100.w,
                          height: 100.h,
                          fit: BoxFit.cover,
                        )))
              ],
            ),
          ),
        ),
      )
    ]);
  }
}

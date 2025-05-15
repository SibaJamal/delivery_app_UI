import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_project/screens/vendor_details_screen/vendor_details_screen.dart';

class VendorCard extends StatefulWidget {
 final Map<String, dynamic> product;
  const VendorCard({super.key, required this.product});

  @override
  State<VendorCard> createState() => _VendorCardState();
}

class _VendorCardState extends State<VendorCard> {
  bool _selected=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => VendorDetailsScreen(product: widget.product,)));
      },
      child: Container(
        color: Colors.white70,
        child: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Hero(
                      tag: widget.product['name'],
                      child: Image.asset(widget.product['imagePath'],width: 100.w,height: 100.h,fit: BoxFit.cover,))),
              Expanded(
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: 16.0.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(widget.product['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),),
                       Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.0.r),
                            child: Icon(Icons.star,size: 16.r,color: Colors.amberAccent,),
                          ),
                          Text(widget.product['rating'].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.r),),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0.r),
                            child: Text('* fast food *',style: TextStyle(color: Colors.grey,fontSize: 14.sp),),
                          ),
                          Text('\$\$',style: TextStyle(color: Colors.grey,fontSize: 14.sp),),
                        ],),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Container(
                              decoration:const BoxDecoration(
                                  color: Color(0x70977f98),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0.r,vertical: 3.0.r),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.access_alarm,size: 16.r,color:Theme.of(context).primaryColor,),
                                    Text('15-20 min',style: TextStyle(color:Theme.of(context).primaryColor,fontSize: 12.sp),),
                                  ],),
                              ),
                            ),
                          ),
                           Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0.r),
                            child: Text('2.8 km',style: TextStyle(color: Colors.grey,fontSize: 14.sp),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if (_selected== false){_selected=true;}
                    else {_selected=false;}
                  });
              },
                  child: _selected==false?Icon(Icons.favorite_border,color: Theme.of(context).primaryColorDark,size: 24.r,):Icon(Icons.favorite,color: Theme.of(context).primaryColorDark,size: 24.r,)),
            ],
          ),
        ),
      ),
    );
  }
}

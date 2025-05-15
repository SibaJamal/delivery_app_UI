import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../product_details_screen.dart';

class ProductCard extends StatelessWidget {
  final Map<String,dynamic> product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen(product: product,)));
        },
        child: SizedBox(
          height: 100.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(product['imagePath'],width: 50.w,height: 50.h,fit: BoxFit.cover,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(product['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.r),),
                SizedBox(
                  width: 150,
                    child: Text(product['detail'],  overflow: TextOverflow.ellipsis,
                        maxLines: 3,style: const TextStyle(color: Colors.grey),)),
              ],),
              Column(
                children: [
                  const Text('\$ 34 ',style: TextStyle(fontWeight: FontWeight.bold),),
                  TextButton(onPressed: () {  },
                    style: ButtonStyle(
                      overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return Colors.red.withValues(alpha: 0.2); // Customize the pressed splash
                          }
                          return null; // Default for other states
                        },
                      ),
                    ),
                    child:Text('Add to cart',style: TextStyle(color: Theme.of(context).primaryColorDark),),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core_widgets/main_header.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Map<String,dynamic> product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const MainHeader(),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                Positioned(
                    left:-100,height: 350,
                    child: Image.asset(product['imagePath'], fit: BoxFit.fitHeight),),
              ],
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product['title'],style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
                  Text('\$ 40',style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 18.sp,),),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0.r),
                    child: Text(product['detail'],style: const TextStyle(color: Colors.grey),),
                  ),
                  const Expanded(child: SizedBox()),
                  Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: IconButton(
                          style: ButtonStyle(backgroundColor: WidgetStateProperty.resolveWith((state)=> state.contains(WidgetState.pressed)?Colors.grey.withAlpha(90):Colors.white),elevation: WidgetStatePropertyAll(4),shadowColor: WidgetStatePropertyAll(Colors.black)),
                          onPressed: (){}, icon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0.r,vertical: 8.r),
                            child: Icon(Icons.favorite,color: Theme.of(context).primaryColorDark,),
                          ),splashRadius:33,color: Colors.white,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: TextButton(onPressed: (){},
                            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).primaryColorDark),elevation: const WidgetStatePropertyAll(4),shadowColor: const WidgetStatePropertyAll(Colors.black)),
                            child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                          child: Text('Add to cart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )


          ],
        ),
      ),
    );
  }
}

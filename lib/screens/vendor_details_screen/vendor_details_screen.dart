import 'package:flutter/material.dart';
import 'package:ui_project/screens/vendor_details_screen/widgets/header_widget.dart';
import 'package:ui_project/screens/vendor_details_screen/widgets/product_card.dart';
import '../../data.dart';

class VendorDetailsScreen extends StatelessWidget {
 final Map<String, dynamic> product;
  const VendorDetailsScreen({super.key, required this.product,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.4,
            child: HeaderWidget(product:product,),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: productList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                final product = productList[index];
                return ProductCard(product: product,) ;},
            ),
          )
        ],
      ),
    );
  }
}

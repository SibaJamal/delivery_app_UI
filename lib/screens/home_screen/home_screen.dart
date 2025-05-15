import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data.dart';
import 'widgets/category_list_view.dart';
import 'widgets/vendor_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<Offset>_slideContainerAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _slideContainerAnimation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.r,vertical: 8.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black,fontSize: 34.sp),
                          children: const [
                            TextSpan(text: 'hi, '),
                            TextSpan(text: 'Helal', style: TextStyle(fontWeight: FontWeight.bold)),
                          ]
                      ),),
                      const Text('Deliver to al abeir tower'),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  const Icon(Icons.shopping_cart_outlined),
                  Padding(
                    padding: EdgeInsets.all(16.0.r),
                    child: const Icon(Icons.favorite_border),
                  )
                ],
              ),
            ),
           SlideTransition(
               position: _slideContainerAnimation,
           child: const CategoryListView()),
            Expanded(
              child: SlideTransition(
                position: _slideAnimation,
                child: FadeTransition(
                  opacity:_fadeAnimation,
                  child: ListView.builder(
                    itemCount: vendorList.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final vendor = vendorList[index];
                      return VendorCard(product: vendor,) ;},),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


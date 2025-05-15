import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    _next();
  }

  _next () async {
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
      Navigator.pushReplacement(context,PageRouteBuilder(
        pageBuilder: (context ,animation, secondAnimation) => const HomeScreen(),
      transitionDuration: const Duration(milliseconds:350),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin= Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeIn));
        final offSetAnimation= animation.drive(tween);
          return SlideTransition(position: offSetAnimation,child: child,);
      },
    ));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Image.asset('assets/images/delivery.png',width: 200.w,height: 200.h,),
      ),
    );
  }
}

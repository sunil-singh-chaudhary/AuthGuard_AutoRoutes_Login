import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:doctorx_flutter/routes/AutoRoutes.gr.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'SplashScreen')
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      context.router.push(
          const DashboardRoutes()); //TODO : direactly to dashbard not login from here IMP step
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:doctorx_flutter/routes/AutoRoutes.gr.dart';
import 'package:flutter/material.dart';

import '../utils/sharedpreference.dart';

@RoutePage(name: 'DashboardRoutes')
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard Screen'),
        ),
        body: Center(
            child: ElevatedButton(
                child: const Text('Logout'),
                onPressed: () async {
                  // Implement logout logic here
                  await SharedPreferencesUtils.clearLogout();
                  context.router.replace(const SplashScreen());
                })));
  }
}

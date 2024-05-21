import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootNavigator extends StatelessWidget {
  const RootNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        return Scaffold(
          body: GetRouterOutlet(
            initialRoute: '/splash',
            anchorRoute: '/',
            key: Get.nestedKey('/'),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigator_getx_routeoutlet/modules/auth/auth_controller.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Your login page design here'),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Get.rootDelegate.offAndToNamed('/home/page_a');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

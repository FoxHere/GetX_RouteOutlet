import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigator_getx_routeoutlet/modules/home/page_a/page_a_controller.dart';

class PageAPage extends StatelessWidget {
  PageAPage({super.key});

  final controller = Get.find<PageAController>();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hi I'm page A"),
      ),
    );
  }
}

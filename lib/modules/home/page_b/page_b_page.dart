import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigator_getx_routeoutlet/modules/home/page_b/page_b_controller.dart';

class PageBPage extends StatelessWidget {
  PageBPage({super.key});

  final controller = Get.find<PageBController>();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hi I'm page B"),
      ),
    );
  }
}

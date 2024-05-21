import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigator_getx_routeoutlet/modules/home/Layout/components/navigation_menu.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (context, delegate, config) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home layout page'),
          automaticallyImplyLeading: false,
        ),
        body: Row(
          children: [
            NavigationMenu(delegate: delegate),
            Expanded(
                child: GetRouterOutlet(
              initialRoute: '/home/page_a',
              anchorRoute: '/home',
              delegate: Get.rootDelegate,
            ))
          ],
        ),
      );
    });
  }
}

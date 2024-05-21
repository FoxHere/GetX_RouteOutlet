import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigator_getx_routeoutlet/modules/auth/auth_bindigns.dart';
import 'package:navigator_getx_routeoutlet/modules/auth/auth_page.dart';
import 'package:navigator_getx_routeoutlet/modules/home/Layout/layout_page.dart';
import 'package:navigator_getx_routeoutlet/modules/home/page_a/page_a_binding.dart';
import 'package:navigator_getx_routeoutlet/modules/home/page_a/page_a_page.dart';
import 'package:navigator_getx_routeoutlet/modules/home/page_b/page_b_binding.dart';
import 'package:navigator_getx_routeoutlet/modules/home/page_b/page_b_page.dart';
import 'package:navigator_getx_routeoutlet/modules/home/page_c/page_c_page.dart';
import 'package:navigator_getx_routeoutlet/pages/splash_page.dart';
import 'package:navigator_getx_routeoutlet/routes/root_navigator.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(
        name: '/',
        transition: Transition.leftToRight,
        page: () => const RootNavigator(),
        participatesInRootNavigator: true,
        children: [
          GetPage(
            name: '/splash',
            transition: Transition.leftToRight,
            page: () => const SplashPage(),
          ),
          GetPage(
            name: '/auth',
            transition: Transition.leftToRight,
            page: () => const Center(),
            children: [
              GetPage(
                name: '/sign_in',
                binding: AuthBindings(),
                transition: Transition.leftToRight,
                page: () => AuthPage(),
              ),
            ],
          ),
          GetPage(
            name: '/home',
            page: () => const LayoutPage(),
            preventDuplicates: true,
            participatesInRootNavigator: true,
            transition: Transition.leftToRight,
            children: [
              GetPage(
                name: '/page_a',
                binding: PageABinding(),
                transition: Transition.leftToRight,
                page: () => PageAPage(),
              ),
              GetPage(
                name: '/page_b',
                binding: PageBBinding(),
                transition: Transition.leftToRight,
                page: () => PageBPage(),
              ),
              GetPage(
                name: '/page_c',
                transition: Transition.leftToRight,
                page: () => const PageCPage(),
              ),
            ],
          )
        ]),
  ];
}

import 'package:get/get.dart';
import 'package:navigator_getx_routeoutlet/modules/home/page_a/page_a_controller.dart';

class PageABinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageAController());
  }
}

import 'package:get/get.dart';
import 'package:navigator_getx_routeoutlet/modules/home/page_b/page_b_controller.dart';

class PageBBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageBController());
  }
}

import 'package:get/get.dart';
import 'package:navigator_getx_routeoutlet/modules/auth/auth_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}

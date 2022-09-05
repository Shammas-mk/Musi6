import 'package:get/get.dart';

class HomeController extends GetxController {
  
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'GOOD MORNING';
    }
    if (hour < 17) {
      return 'GOOD AFTERNOON';
    }
    return 'GOOD EVENING';
  }
}

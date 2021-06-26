

import 'package:egytologia/core/view_model/control_view_model.dart';
import 'package:egytologia/core/view_model/controlview_tourguide.dart';

import 'package:get/get.dart';

class Binding  extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => HomeViewModel_guide());
  }

}
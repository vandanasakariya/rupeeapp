import 'package:get/get.dart';
import 'package:rupeeapp/moduls/currentprice/rupee_modal.dart';
import 'package:rupeeapp/moduls/currentprice/rupee_service.dart';

class RupeeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    getRupeeMethod();
    super.onInit();
  }

  Rx<RupeeCruptoModal> rupeeModal = RupeeCruptoModal().obs;
  Future<void> getRupeeMethod() async {
    final result = await RupeeService.getRupeeData();
    if (result != null) {
      rupeeModal.value = result;
    }
  }
}

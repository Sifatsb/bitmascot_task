import 'package:bitmascot_task/controller/dashboard_controller.dart';
import 'package:get/get.dart';
import 'internet_controller.dart';
import 'login_controller.dart';


///Get X global variable
var loginController             = Get.put(LoginController());
var dashBoardController         = Get.put(DashBoardController());
var internetController          = Get.put(InternetController());

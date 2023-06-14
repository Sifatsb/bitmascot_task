import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'internet_controller.dart';
import 'login_controller.dart';


///Get X global variable
var loginController             = Get.put(LoginController());
var internetController          = Get.put(InternetController());


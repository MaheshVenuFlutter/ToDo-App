import 'package:get/get.dart';
import 'package:to_do_getx/app/data/provider/task/provider.dart';
import 'package:to_do_getx/app/data/services/repository.dart';
import 'package:to_do_getx/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(taskProvider: TaskProvider())));
  }
}

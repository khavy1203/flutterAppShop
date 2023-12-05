import 'package:get/get.dart';
import 'package:mobileflutter/routes/app_route.dart';
import 'package:mobileflutter/view/dashboard/dashboard_binding.dart';
import 'package:mobileflutter/view/dashboard/dashboard_screen.dart';

class AppPage {
  static var list = [
    GetPage(
        name: AppRouter.dashboard,
        page: () => const DashboardScreen(),
        binding: DashboardBinding()
    )
  ];
}

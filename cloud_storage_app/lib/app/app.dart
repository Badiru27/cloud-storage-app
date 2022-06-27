import 'package:cloud_storage_app/ui/drive_detail/drive_detail_view.dart';
import 'package:cloud_storage_app/ui/home/home_view.dart';
import 'package:cloud_storage_app/ui/menue/menue_view.dart';
import 'package:cloud_storage_app/ui/onboarding/onboarding_viemodel.dart';
import 'package:cloud_storage_app/ui/onboarding/onboarding_view.dart';
import 'package:cloud_storage_app/ui/starup/startup_view.dart';
import 'package:cloud_storage_app/ui/subscribe/subscribe_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  CupertinoRoute(page: StartUpView,),
  CupertinoRoute(page: SubscribeView,),
  CupertinoRoute(page: MenueView,),
  CupertinoRoute(page: HomeView,),
  CupertinoRoute(page: OnboardingView, initial: true),
  CupertinoRoute(page: DriveDetailsView),
], dependencies: [
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: OnboardingViewModel),
], logger: StackedLogger())
class AppSetup {}


import 'package:cloud_storage_app/app/app.locator.dart';
import 'package:cloud_storage_app/app/app.router.dart';
import 'package:cloud_storage_app/constant/app_string.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MenueViewModel extends BaseViewModel{

  var _menueOption = menueption.keys.toList();
  List<String> get menueOption => _menueOption;
  final _navigationService = locator<NavigationService>();

  void navigateToNextScreen(){
    _navigationService.navigateTo(Routes.driveDetailsView);
  }
  
  
}
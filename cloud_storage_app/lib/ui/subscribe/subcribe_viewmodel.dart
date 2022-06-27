
import 'package:cloud_storage_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.router.dart';

class SubscribeViewModel extends BaseViewModel{
    final _navigator = locator<NavigationService>();
    
    void navigateToNextScreen(){
  _navigator.pushNamedAndRemoveUntil(Routes.homeView);
 
  }
}
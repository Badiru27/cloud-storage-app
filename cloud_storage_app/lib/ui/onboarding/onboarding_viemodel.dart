
import 'package:cloud_storage_app/app/app.locator.dart';
import 'package:cloud_storage_app/app/app.router.dart';
import 'package:cloud_storage_app/constant/app_assets.dart';
import 'package:cloud_storage_app/constant/app_string.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel{

  final _navigator = locator<NavigationService>();
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  final List<String> _headers = [onboardingH1Text, onboardingH1Text, onboardingH1Text];
  final List<String> _bodies = [onboardingBodyText1, onboardingBodyText2, onboardingBodyText3];
  final List<String> _images = [onboardingImage1, onboardingImage1, onboardingImage1];
  

  String get header =>_headers[_currentIndex];
  String get bodies => _bodies[_currentIndex];
  String get images => _images[_currentIndex];


  void updateCurrentIndex(int index) async{
    _currentIndex = index;
    notifyListeners();
  }
  

  void navigateToNextScreen(){
  _navigator.pushNamedAndRemoveUntil(Routes.subscribeView);
 
  }


}
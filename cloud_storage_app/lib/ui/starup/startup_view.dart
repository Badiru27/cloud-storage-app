import 'package:cloud_storage_app/ui/shared/widgets/round_custome_icon.dart';
import 'package:cloud_storage_app/ui/starup/startup_viewmodel.dart';
import 'package:cloud_ui/cloud_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewmodel>.reactive(
        viewModelBuilder: () => StartUpViewmodel(),
        builder: (context, model, child) => Scaffold(
              body: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                      child: CloudText.headerOne(
                    text: 'Hi',
                    color: kcBlackColor,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CloudButton(
                      title: 'title',
                      onTap: () {},
                      leading: Icon(
                        Icons.access_alarm,
                        color: kcGreyColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CloudButton(
                      title: 'title',
                      onTap: () {},
                      enable: true,
                      leading: Icon(
                        Icons.access_alarm,
                        color: kcWhiteColor,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CloudButton(
                        title: 'title',
                        leftIcon: false,
                        onTap: () {},
                        enable: false,
                        leading: RoundCustomeIcon(backgroundColor: kcRedColor, color: kcWhiteColor, iconData: FontAwesomeIcons.google)
                      ))
                ],
              ),
            ));
  }
}

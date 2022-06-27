import 'package:cloud_storage_app/app/app.locator.dart';
import 'package:cloud_storage_app/app/app.router.dart';
import 'package:response/response.dart' as response;
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return response.Response(
      child: MaterialApp(
        title: 'Cloud Storage',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


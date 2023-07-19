import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/common/my_http_overriders.dart';
import 'package:flutter_application_1/my_app.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application_1/injection.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init('prod');

  Intl.defaultLocale = 'id';
  HttpOverrides.global = MyHttpOverrides();
  await di.locator.allReady();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

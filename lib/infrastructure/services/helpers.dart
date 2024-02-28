import 'dart:developer';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppHelper {
  AppHelper._();

  static Future<String> generateIMEI(BuildContext context) async {
    bool isiOS = Theme.of(context).platform == TargetPlatform.iOS;
    bool isAndroid = Theme.of(context).platform == TargetPlatform.android;
    bool isWeb = !isAndroid && !isiOS;
    String imei = '';
    if (isiOS) {
      final info = await DeviceInfoPlugin().iosInfo;
      imei = "${info.systemName}_${info.systemVersion}";
    }
    if (isAndroid) {
      final info = await DeviceInfoPlugin().androidInfo;
      imei = "${info.bootloader}_${info.model}";
    }
    if (isWeb) {
      final info = await DeviceInfoPlugin().webBrowserInfo;
      imei = "${info.browserName.name}_${info.platform}_${info.productSub}";
    }
    return imei;
  }
}

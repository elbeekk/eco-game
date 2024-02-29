import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

abstract class AppHelper {
  AppHelper._();

  static Future<String> generateIMEI(BuildContext context) async {
    bool isiOS = Theme.of(context).platform == TargetPlatform.iOS;
    bool isAndroid = Theme.of(context).platform == TargetPlatform.android;
    bool isWeb = !isAndroid && !isiOS;
    String imei = '';
    if (isiOS) {
      final info = await DeviceInfoPlugin().iosInfo;
      imei = "${info.systemName}_${info.name}_${info.identifierForVendor}";
    }
    if (isAndroid) {
      final info = await DeviceInfoPlugin().androidInfo;
      imei = "${info.bootloader}_${info.model}_${info.hardware}";
    }
    if (isWeb) {
      final info = await DeviceInfoPlugin().webBrowserInfo;
      imei = "${info.platform}_${info.browserName.name}_${info.vendor}_${info.hardwareConcurrency}";
    }
    if (imei.contains('null')) {
      imei = "null-${const Uuid().v1()}";
    }
    print("IMEI $imei");
    return imei;
  }
}

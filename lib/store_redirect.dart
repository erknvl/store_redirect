import 'dart:async';

import 'package:flutter/services.dart';

class StoreRedirect {
  static const MethodChannel _channel = const MethodChannel('store_redirect');

  static Future<void> redirect({String? androidAppId, String? iOSAppId}) async {
    await _channel.invokeMethod(
        'redirect', {'android_id': androidAppId, 'ios_id': iOSAppId});
    return null;
  }
}

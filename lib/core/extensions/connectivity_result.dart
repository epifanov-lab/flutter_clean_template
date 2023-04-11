import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

extension ConnectivityResultX on ConnectivityResult {
  String get status {
    switch (this) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
        return 'CONNECTED';
      case ConnectivityResult.bluetooth:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.vpn:
      case ConnectivityResult.other:
      case ConnectivityResult.none:
        return 'DISCONNECTED';
    }
  }

  Color get color {
    switch (this) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
        return Colors.green;
      case ConnectivityResult.bluetooth:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.vpn:
      case ConnectivityResult.other:
      case ConnectivityResult.none:
        return Colors.red;
    }
  }
}
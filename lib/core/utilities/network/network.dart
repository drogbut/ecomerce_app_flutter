import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../locator.dart';
import 'on_offline.dart';

class UtilityNetwork {
  static final UtilityNetwork _instance = UtilityNetwork._internal();
  factory UtilityNetwork() => _instance;

  late UtilityOnOffline _onOff;

  UtilityNetwork._internal() {
    _onOff = sl.get<UtilityOnOffline>();
  }

  bool getOnlineOfflineStatusWithConnectivity(
      ConnectivityResult connectionStatus) {
    if (connectionStatus == ConnectivityResult.none) {
      return false;
    }

    return _onOff.getOnlineOfflineStatus();
  }

  bool getOnlineOfflineTryStatusWithConnectivity(
      ConnectivityResult connectionStatus) {
    if (connectionStatus == ConnectivityResult.none) {
      return false;
    }

    return _onOff.getOnlineOfflineTryStatus();
  }
}

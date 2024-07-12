import 'dart:async';

import '../../../standard/constants.dart';

class UtilityOnOffline {
  static final UtilityOnOffline _instance = UtilityOnOffline._internal();
  factory UtilityOnOffline() => _instance;

  UtilityOnOffline._internal() {
    _timer = null;
    _onlineOfflineStatus = true;
    _onlineOfflineTryStatus = true;

    _maintenance = false;
  }

  void startTimer({bool maintenance = false}) {
    if (_onlineOfflineTryStatus) {
      _maintenance = maintenance;

      _onlineOfflineStatus = false;
      _onlineOfflineTryStatus = false;
      _timer = Timer.periodic(const Duration(seconds: offlineTimeInSeconds), (_) {
        timedOut();
      });
    }
  }

  void deactivateTimer() {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;

      _onlineOfflineStatus = true;
      _onlineOfflineTryStatus = true;

      _maintenance = false;
    } else {
      _onlineOfflineStatus = true;
      _onlineOfflineTryStatus = true;

      _maintenance = false;
    }
  }

  Future<void> timedOut() async {
    _timer!.cancel();
    _timer = null;
    _onlineOfflineTryStatus = true;

    _maintenance = false;
  }

  bool getOnlineOfflineStatus() {
    return _onlineOfflineStatus;
  }

  bool getOnlineOfflineTryStatus() {
    return _onlineOfflineTryStatus;
  }

  bool getMaintenance() {
    return _maintenance;
  }

  Timer? _timer;

  late bool _onlineOfflineStatus;
  late bool _onlineOfflineTryStatus;

  late bool _maintenance;
}

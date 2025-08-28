// bluetooth_helper.dart

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BluetoothHelper {
  static Future<List<ScanResult>> scanDevices({int timeoutSeconds = 10}) async {
    List<ScanResult> results = [];

    await FlutterBluePlus.startScan(timeout: Duration(seconds: timeoutSeconds));

    var subscription = FlutterBluePlus.scanResults.listen((scanResults) {
      results = scanResults;
    });

    await Future.delayed(Duration(seconds: timeoutSeconds));

    await FlutterBluePlus.stopScan();
    await subscription.cancel();

    return results;
  }

  static Future<BluetoothCharacteristic?> connectToWritableCharacteristic(
    BluetoothDevice device, {
    String writableUuid = 'fe2c1237-8366-4814-8eb0-01de32100bea',
  }) async {
    try {
      await device.connect();
      final services = await device.discoverServices();

      for (final service in services) {
        for (final characteristic in service.characteristics) {
          if (characteristic.uuid.toString() == writableUuid) {
            return characteristic;
          }
        }
      }

      await device.disconnect();
      return null;
    } catch (e) {
      await device.disconnect();
      return null;
    }
  }

  static String getDeviceDisplayName(ScanResult result) {
    if (result.advertisementData.advName.isNotEmpty) {
      return result.advertisementData.advName;
    }
    if (result.advertisementData.localName.isNotEmpty) {
      return result.advertisementData.localName;
    }
    if (result.device.platformName.isNotEmpty) {
      return result.device.platformName;
    }
    final deviceId = result.device.remoteId.toString();
    return 'Dispositivo ${deviceId.length > 8 ? deviceId.substring(0, 8) : deviceId}';
  }

  // Função para debug - mostra todas as informações disponíveis
  static void printDeviceInfo(ScanResult result) {
    try {} catch (e) {}
  }
}

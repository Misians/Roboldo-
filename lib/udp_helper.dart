import 'dart:io';

class UDPHelper {
  static Future<void> sendUDP(
    String message, {
    String host = '192.168.0.100',
    int port = 5000,
  }) async {
    final socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, 0);
    socket.send(message.codeUnits, InternetAddress(host), port);
    socket.close();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';
import 'dart:ui';

class QRScannerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QRCodeDartScanView(
        lockCaptureOrientation: DeviceOrientation.portraitUp,

        croppingStrategy: CroppingStrategy.cropCenterSquare(
          squareSizeFactor: 0.7,
        ),
        resolutionPreset: QRCodeDartScanResolutionPreset.high,
        onCameraError: (error) => debugPrint('Camera error: $error'),
        imageDecodeOrientation: ImageDecodeOrientation.original,
        onCapture: (Result result) {
          debugPrint('QR Data: ${result.text}');

          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Scanned: ${result.text}')));
        },
      ),
    );
  }
}

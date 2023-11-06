/*
 * QR.Flutter
 * Copyright (c) 2019 the QR.Flutter authors.
 * See LICENSE for distribution and usage details.
 */

import 'package:flutter/material.dart';
import 'package:qr_flutter_wc/qr_flutter_wc.dart';

/// This is the screen that you'll see when the app starts
class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    const message =
        'wc:7f6e504bfad60b485450578e05678ed3e8e8c4751d3c6160be17160d63ec90f9@2?symKey=587d5484ce2a2a6ee3ba1962fdd7e8588e06200c46823bd18fbd67def96ad303&methods=[wc_sessionPropose],[wc_authRequest,wc_authBatchRequest]&relay-protocol=irn';
    return Material(
      color: Colors.blue,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                border: Border.all(
                  color: Colors.white,
                  width: 18.0,
                ),
              ),
              child: QrImageView(
                data: message,
                size: MediaQuery.of(context).size.width - 60.0,
                version: QrVersions.auto,
                errorCorrectionLevel: QrErrorCorrectLevel.Q,
                eyeStyle: const QrEyeStyle(
                  eyeShape: QrEyeShape.circle,
                  color: Colors.black,
                ),
                dataModuleStyle: const QrDataModuleStyle(
                  dataModuleShape: QrDataModuleShape.circle,
                  color: Colors.black,
                ),
                embeddedImage: AssetImage('assets/logo_wc.png'),
                embeddedImageStyle: QrEmbeddedImageStyle(
                  size: Size(80.0, 80.0),
                ),
                embeddedImageEmitsError: true,
              ),
            ),
            const SizedBox.square(dimension: 12.0),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

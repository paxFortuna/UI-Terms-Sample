import 'package:flutter/material.dart';
import 'package:ui_terms_sample/src/terms_of_service.dart';
import 'package:ui_terms_sample/src/terms_of_service_webview.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '서비스 이용 약관',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsOfServiceWithWebview(),
                  ),
                );
              },
              child: const Text('WebView 이용약관'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TermsOfService(),
                  ),
                );
              },
              child: const Text('Mobile 이용약관'),
            ),
          ],
        ),
      ),
    );
  }
}

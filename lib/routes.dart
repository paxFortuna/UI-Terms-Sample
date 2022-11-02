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
            Container(
            decoration: _boxDecoration(),
          child: _button(
            context,
            const TermsOfService(),
            'WebView 이용약관',
              ),
            ),
            const SizedBox(height: 24),
            Container(
              decoration: _boxDecoration(),
              child: _button(
                context,
                const TermsOfService(),
                'Mobile 이용약관',
              ),
            ),
          ],
        ),
      ),
    );
  }
  // neumorphysm widget
  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          spreadRadius: 3,
          color: Colors.grey.shade700,
          blurRadius: 10,
          offset: const Offset(5, 5),
        ),
        const BoxShadow(
          spreadRadius: 3,
          color: Colors.white,
          blurRadius: 12,
          offset: Offset(-5, -5),
        ),
      ],
    );
  }

  _button(BuildContext context, Widget widget, String text) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      },
      child: Text(text),
    );
  }
}


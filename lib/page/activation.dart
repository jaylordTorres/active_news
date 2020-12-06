import 'package:flutter/material.dart';

import '../constant/main.dart';
import '../text_content/main.dart';

class ActivationPage extends StatelessWidget {
  static UiRoutes route = UiRoutes.activation;
  const ActivationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SingleChildScrollView(
                    child: Text(UiMessage.activationMessage +
                        UiMessage.activationMessage),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Activate'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

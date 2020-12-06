import 'package:active_news/constant/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'main_app/main.dart';

void main() async {
  await DotEnv().load('.env');
  final key = DotEnv().env['API_KEY'];
  if (key.isEmpty) {
    print('APi key required');
    return;
  }
  // set api key
  ApiConstant.key = key;

  // validate app
  runApp(MainApp());
}

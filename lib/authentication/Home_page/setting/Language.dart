import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                var locale = Locale('si', 'SL');
                Get.updateLocale(locale);
              },
              child: Text('Change Language'),
            ),
          ],
        ),
      ),
    );
  }
}

class LocalStrings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'Help': 'Help', 'Change Language': 'Change Language'},
        'si_SL': {'Help': 'සහය', 'Change Language': "භාෂාව වෙනස් කරන්න"}
      };
}

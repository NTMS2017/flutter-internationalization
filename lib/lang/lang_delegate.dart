import 'dart:async';
import 'package:flutter/material.dart';
import 'lang.dart';

class LangDelegate extends LocalizationsDelegate<Lang> {
  const LangDelegate();

  @override
  bool isSupported(Locale locale) => ['tr', 'en', 'ru'].contains(locale.languageCode);

  @override
  Future<Lang> load(Locale locale) async {
    Lang lang = new Lang(locale);
    await lang.load();

    return lang;
  }

  @override
  bool shouldReload(LangDelegate old) => false;
}

import 'package:flutter/material.dart';
import 'lang/lang.dart';

// TODO: Translate the given key from the localization
String trans(BuildContext context, String key, {Map<String, String> replaces}) {
  return Lang.of(context).trans(key, replaces: replaces);
}


import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:internationalization/helpers.dart';
import 'package:internationalization/lang/lang_delegate.dart';
import 'package:internationalization/drawer/second_page.dart';


// TODO: (1) main
void main() {
  runApp(
      new MaterialApp(
        // *** import material.dart ***
        supportedLocales: [
          const Locale('tr', 'TR'),
          const Locale('en', 'US'),
          const Locale('ru', 'RU')
        ],
        localizationsDelegates: [
          // *** import lang/lang_delegate.dart ***
          const LangDelegate(),
          // *** import flutter_localizations.dart ***
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
          for (Locale supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode || supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        title: 'Flutter Internationalization',
        debugShowCheckedModeBanner: false,
        home: new myApp(),
      )
  );
}



// TODO: (2) Stateful Widget
class myApp extends StatefulWidget {
  @override
  _myAppState createState() => new _myAppState();
}



// TODO: (3) build Widget
class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Padding(padding: EdgeInsets.all(32.0)),
              new Text(
                trans(context, 'main.greetings'),
                style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                ),
              ),
              new Padding(padding: EdgeInsets.all(20.0)),
              new RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondPage()
                        )
                    );
                  },
                  child: new Text(trans(context, 'main.secondPageButton'))
              ),
              new Padding(padding: EdgeInsets.all(20.0)),
            ],
          ),
        )
    );
  }
}

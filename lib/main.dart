import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import './screens/main-home.dart';
import 'providers/providers.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: _providers,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Color(0XFFf7f7f7),
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Color(0XFFf7f7f7),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
        ),
        home: MainHome(),
      ),
    );
  }

  List<SingleChildWidget> get _providers {
    return [
      ChangeNotifierProvider.value(value: ProvProducts()),
    ];
  }
}

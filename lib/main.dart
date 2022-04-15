import 'package:flutter/material.dart';
import 'Screens/ScreenSplash/splash.dart';

void main() {
  runApp(MyApp());
}

//Color colorHeader = Colors.blue;
Color colorWhite = Color(0xFFf4f4f4);
Color colorYel = Color(0xFFCFB53B);
Color colorHeader = Color(0xFF7BB5CB);
Color colorHeader2 = Color(0xFF1E2C46);


final Map<int, Color> _lightBlue700Map = {
  50: Color(0xFFFFD7C2),
  100: Colors.lightBlue.shade100,
  200: Colors.lightBlue.shade200,
  300: Colors.lightBlue.shade300,
  400: Colors.lightBlue.shade400,
  500: Colors.lightBlue.shade500,
  600: Colors.lightBlue.shade600,
  700: Colors.lightBlue.shade700,
  800: Colors.lightBlue.shade800,
  900: Colors.lightBlue.shade900,
};
final MaterialColor colorHeaderSub =
MaterialColor(Colors.lightBlue.shade700.value, _lightBlue700Map);
String pageDirect = "";
int selectedPage = 0;

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eurotolia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorHeaderSub,
        fontFamily: 'Nunito',
      ),
      home: SplashScreen(),
      //routes: routes,
    );
  }
}
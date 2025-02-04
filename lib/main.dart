import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honrubia_long_exam1/constants.dart';
import '/screens/home_screen.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: NU_BLUE, // navigation bar color
    statusBarIconBrightness: Brightness.dark, // status bar color
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const NUBulldogzExchange());
}

class NUBulldogzExchange extends StatelessWidget {
  const NUBulldogzExchange({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          color: Colors.white,
          debugShowCheckedModeBanner: false,
          title: 'NU Bulldogz Exchange',
          initialRoute: '/home',
          routes: {
            '/home': (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ifswebsite/common/ifsassets.dart';
import 'package:ifswebsite/multiproviderapp.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Desktop/home/screen/desktophomepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MultiProviderApp.general,
      child: GetMaterialApp(
        title: 'Lorem Ipsum',
        home: ScreenTypeLayout(
          breakpoints: ScreenBreakpoints(
            desktop: 950,
            watch: 350,
            tablet: 600,
          ),
          desktop: DesktopHomePage(),
          mobile: Container(
            color: Colors.white,
            child: Center(child: Lottie.asset(IfsAssets.loading)),
          ),
          tablet: Container(
            color: Colors.white,
            child: Center(child: Lottie.asset(IfsAssets.loading)),
          ),
        ),
      ),
    );
  }
}

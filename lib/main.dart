// Copyright (c) 2022 Bluespada
// This software is under MIT License please read accompanying file
// COPY, or read online at https://opensource.org/licenses/MIT

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import app module
import 'app.dart';
void main() async {
  // flutter widget bindings
  WidgetsFlutterBinding.ensureInitialized();
  
  // easy localization initialized
  await EasyLocalization.ensureInitialized();

  // screenutils initialized
  await ScreenUtil.ensureScreenSize();

  // main endpoint
  runApp(EasyLocalization(
    supportedLocales: const [Locale('en'), Locale('id')],
    path: "assets/i18n",
    child: ModularApp(
      module: AppModule(),
      child: ScreenUtilInit(
        minTextAdapt: true, // automatic text resize
        splitScreenMode: true, // supported splitscreen
        builder: (context, child) => MaterialApp.router(
          // initialize i18n
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
          // routing
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
        )
      ),
    ),
  ));
}
import 'package:argo/argo.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tkmonkey_web/app/ui/index/index_page.dart';

import 'app/ui/pages/home/home_page.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/web_theme.dart';

void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper(
        wrapConfig: _wrapConfig,
        responsiveTheme: _responsiveTheme,
        child: child!,
      ),
      home: ResponsiveWrapper(
        child: IndexPage(),
      ),
    );
  }
}

final _wrapConfig = WrapperConfig(
  globalBreakpoints: ScreenBreakpoints.values(
    mobile: const SBValue.max(700),
    tablet: const SBValue.max(1200),
    desktop: const SBValue.inf(),
  ),
);

final _responsiveTheme = ResponsiveTheme.screen(
  conditionScreen: ConditionScreen(
    mobile: AppTheme(),
    tablet: AppTheme(),
    desktop: WebTheme(),
  ),
);

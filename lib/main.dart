import 'package:flutter/material.dart';
import 'ui/core/themes/app_theme.dart';
import 'ui/sample_feature/widgets/sample_feature_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: appTheme, home: SampleFeatureScreen());
  }
}

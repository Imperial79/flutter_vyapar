import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_vyapar/Resources/theme.dart';
import 'Pages/Auth/RootUI.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await WindowManager.instance.ensureInitialized();
  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.setTitleBarStyle(
      TitleBarStyle.hidden,
      windowButtonVisibility: false,
    );
    await windowManager.setMinimumSize(const Size(500, 600));
    await windowManager.show();
    await windowManager.setPreventClose(true);
    await windowManager.setSkipTaskbar(false);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Vyapar Bill',
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: kTheme,
      home: RootUI(),
    );
  }
}

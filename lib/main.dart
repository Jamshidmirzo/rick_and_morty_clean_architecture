import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/bloc/bloc_scope.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/widgets/bottom_nav_bar.dart';
import 'package:rick_and_morty/features/settings/presentation/blocs/cubit/localization%20cubit/cubit/local_cubit.dart';
import 'package:rick_and_morty/features/settings/presentation/blocs/cubit/localization%20cubit/cubit/local_state.dart';
import 'package:rick_and_morty/features/settings/presentation/blocs/cubit/theme_cubit.dart';
import 'package:rick_and_morty/core/services/firebase_push_notification.dart';
import 'package:rick_and_morty/gen/localization_delegate.dart';
import 'package:rick_and_morty/core/services/local_notifications_service.dart';
import 'service_locator.dart' as di;

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await di.init();
  await LocalNotificationsService.init();
  await Firebase.initializeApp();
  await FirebasePushNotification.init();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: LocalizationDelegate.supportedLocales,
      useOnlyLangCode: true,
      startLocale: const Locale('uz'),
      child: const BlocScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final _themeCubit = ThemeCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _themeCubit,
      child: BlocBuilder<LocalCubit, LocalState>(
        builder: (context, state) {
          return BlocBuilder<ThemeCubit, ThemeData>(
            builder: (context, themeMode) {
              return MaterialApp(
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: state.locale,
                theme: themeMode,
                debugShowCheckedModeBanner: false,
                home: const BottomNavBar(),
              );
            },
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final currentBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    _themeCubit.changeTheme(currentBrightness);
    Future.delayed(Duration.zero, () async {
      if (!LocalNotificationsService.notificationsEnabled) {
        await LocalNotificationsService.requestPermission();
        setState(() {});
      }
    });
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    final Brightness newBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    _themeCubit.changeTheme(newBrightness);
  }
}

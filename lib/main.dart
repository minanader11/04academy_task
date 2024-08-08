import 'package:encrypt_shared_preferences/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/shared_pref_helper.dart';
import 'package:madrasa_task/domain/DI.dart';
import 'package:madrasa_task/presentation/OnBoarding/view/OnBoardingScreen.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:madrasa_task/presentation/OnBoarding/view_model/OnBoardingScreen_cubit.dart';
import 'package:madrasa_task/presentation/Register/view_model/register_cubit.dart';
import 'package:madrasa_task/presentation/stepPageWidget/view_model/StepPageScreenCubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EncryptedSharedPreferences.initialize(
    '1111111111111111',
  );
  runApp(MultiBlocProvider(providers: [
    BlocProvider<OnBoardingScreenCubit>(
      create: (context) => OnBoardingScreenCubit(),
    ),
    BlocProvider<StepPageScreenCubit>(
      create: (context) => StepPageScreenCubit(
          getSubjectsUseCase: injectGeSubjectsUseCase(),
          getSubscriptionsUseCase: injectGetSubscriptionsUseCase())
        ..getSubjects()
        ..getSubscriptions(),
    ),
    BlocProvider<RegisterCubit>(
      create: (context) => RegisterCubit(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(canvasColor: Colors.transparent),
        debugShowCheckedModeBanner: false,
        routes: {
          // SplashScreen.routeName: (context) => SplashScreen(),
          OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
        },
        initialRoute: OnBoardingScreen.routeName,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        navigatorObservers: const [],
        locale: Locale('${SharedPRefHelper().getLanguage}', ''),
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}

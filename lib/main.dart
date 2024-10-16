import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quran_app/Bloc/Prayer_Cubit/prayer_time_cubit.dart';
import 'package:quran_app/constants/string.dart';
import 'package:quran_app/view/app_router.dart';
import 'Bloc/Tasbeeh_Cubit/tasbeeh_cubit.dart';
import 'view/screens/test.dart';

void main() {
  runApp(
    QuranApp(
      appRoute: AppRouter(),
    ),
  );
}

class QuranApp extends StatelessWidget {
  const QuranApp({super.key, required this.appRoute});
  final AppRouter appRoute;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PrayerTimeCubit(),
        ),
        BlocProvider(
          create: (context) => TasbeehCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRoute.generate_route,
        initialRoute: HomeScreen,
        // home: Test_Screen(),
      ),
    );
  }
}

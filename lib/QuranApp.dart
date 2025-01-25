import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/feature/Quran_app/view/screen/open_app.dart';
import 'package:quran_app/feature/Quran_app/view/screen/quran_pages_Screen.dart';
import 'package:quran_app/feature/Sebha_app/cubit/sebha_cubit.dart';
import 'package:quran_app/feature/Sebha_app/view/screens/sebha_Screen.dart';

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SebhaCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenOne(),
      ),
    );
  }
}

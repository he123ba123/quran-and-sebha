import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/QuranApp.dart';
import 'package:quran_app/core/block/block_opserver.dart';

void main() {
   Bloc.observer = MyBlocObserver();
  runApp(const QuranApp());
}


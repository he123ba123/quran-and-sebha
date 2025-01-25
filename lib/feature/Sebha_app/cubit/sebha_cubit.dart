import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/style/colors.dart';
import 'package:quran_app/core/style/text_style.dart';
import 'package:quran_app/feature/Sebha_app/cubit/sebha_state.dart';

class SebhaCubit extends Cubit<SebhaState> {
  SebhaCubit() : super(SebhaInitial());
  int x = 0;
  String tasbeehDefault = StringApp.text1;
  Color color = ColorApp.colorBlue;

  void counterAdd() {
    x++;
    emit(SebhaUpdate());
  }

  void counterReset() {
    x = 0;
    emit(SebhaUpdate());
  }

  void textOne() {
    tasbeehDefault = StringApp.text1;
    emit(SebhaUpdateText());
  }

  void textTwo() {
    tasbeehDefault = StringApp.text2;
    emit(SebhaUpdateText());
  }

  void textThree() {
    tasbeehDefault = StringApp.text3;
    emit(SebhaUpdateText());
  }

  void textFour() {
    tasbeehDefault = StringApp.text4;
    emit(SebhaUpdateText());
  }

  void textFive() {
    tasbeehDefault = StringApp.text5;
    emit(SebhaUpdateText());
  }

  void next() {
    switch (tasbeehDefault) {
      case 'سبحان الله':
        return textTwo();

      case 'الحمد لله':
        return textThree();

      case 'الله اكبر':
        return textFour();

      case 'لا اله الا الله':
        return textFive();

      case 'لا حول ولا قوة الا بالله':
        return textOne();
    }
    emit(SebhaUpdateNext());
  }


}

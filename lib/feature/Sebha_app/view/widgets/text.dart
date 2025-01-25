import 'package:flutter/material.dart';
import 'package:quran_app/core/style/colors.dart';
import 'package:quran_app/core/style/size_text.dart';
import 'package:quran_app/feature/Sebha_app/cubit/sebha_cubit.dart';

class TasbeehTxt extends StatelessWidget {
  const TasbeehTxt({
    super.key,
    required this.cubit,
  });

  final SebhaCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Text(
          cubit.tasbeehDefault,
          style: TextStyle(fontSize: SizeApp.s50, color: ColorApp.colorBlack),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quran_app/core/style/size_text.dart';
import 'package:quran_app/feature/Sebha_app/cubit/sebha_cubit.dart';
import 'package:quran_app/feature/Sebha_app/view/widgets/border.dart';

class CounterContainer extends StatelessWidget {
  const CounterContainer({
    super.key,
    required this.cubit,
  });

  final SebhaCubit cubit;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerSize = screenWidth * 0.8;
    return GestureDetector(
      onTap: () {
        cubit.counterAdd();
      },
      child: Container(
        height: containerSize,
        width: containerSize,
        decoration: counterDecoration(color: cubit.color),
        child: Center(
          child: Text(
            cubit.x.toString(),
            style: TextStyle(fontSize: SizeApp.s100),
          ),
        ),
      ),
    );
  }
}

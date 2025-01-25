import 'package:flutter/material.dart';
import 'package:quran_app/core/style/colors.dart';
import 'package:quran_app/feature/Sebha_app/cubit/sebha_cubit.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({
    super.key,
    required this.cubit,
  });

  final SebhaCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buttonMaterial(
              onPressed: () {
                cubit.counterReset();
              },
              icon: Icons.replay),
          buttonMaterial(
              onPressed: () {
                cubit.next();
              },
              icon: Icons.arrow_forward),
        ],
      ),
    );
  }
}

Card buttonMaterial({required void Function()? onPressed, required icon}) {
  return Card(
    child: MaterialButton(
      height: 60,
      color: ColorApp.colorPurple,
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            icon,
            color: ColorApp.colorwhite,
          ),
        ],
      ),
    ),
  );
}

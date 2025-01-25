import 'package:flutter/material.dart';
import 'package:quran_app/feature/Sebha_app/cubit/sebha_cubit.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({
    super.key,
    required this.cubit,
    required this.child,
  });

  final SebhaCubit cubit;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity, child: child);
  }
}

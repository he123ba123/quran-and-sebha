import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/feature/Sebha_app/cubit/sebha_cubit.dart';
import 'package:quran_app/feature/Sebha_app/cubit/sebha_state.dart';
import 'package:quran_app/feature/Sebha_app/view/widgets/background.dart';
import 'package:quran_app/feature/Sebha_app/view/widgets/buttons.dart';
import 'package:quran_app/feature/Sebha_app/view/widgets/container.dart';
import 'package:quran_app/feature/Sebha_app/view/widgets/drawer.dart';
import 'package:quran_app/feature/Sebha_app/view/widgets/text.dart';

class SebhaAppScreen extends StatefulWidget {
  const SebhaAppScreen({super.key});

  @override
  State<SebhaAppScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SebhaAppScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SebhaCubit, SebhaState>(
      listener: (BuildContext context, state) {},
      builder: (context, state) {
        SebhaCubit cubit = BlocProvider.of(context);
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(),
          endDrawer: AppDrawer(
            cubitChange: cubit,
          ),
          body: HomeBackground(
            cubit: cubit,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TasbeehTxt(cubit: cubit),
                  CounterContainer(cubit: cubit),
                  RowButtons(cubit: cubit)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

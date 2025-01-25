import 'package:flutter/material.dart';
import 'package:quran_app/core/style/text_style.dart';
import 'package:quran_app/feature/Sebha_app/cubit/sebha_cubit.dart';

import 'package:quran_app/feature/Sebha_app/view/widgets/drawer_text.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    required this.cubitChange,
    super.key,
  });
  final SebhaCubit cubitChange;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 48, bottom: 32, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        cubitChange.textOne();
                        Navigator.pop(context);
                      },
                      child: Text(
                        StringApp.text1,
                        style: drawerTextStyle(),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        cubitChange.textTwo();
                        Navigator.pop(context);
                      },
                      child: Text(
                        StringApp.text2,
                        style: drawerTextStyle(),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        cubitChange.textThree();
                        Navigator.pop(context);
                      },
                      child: Text(
                        StringApp.text3,
                        style: drawerTextStyle(),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        cubitChange.textFour();
                        Navigator.pop(context);
                      },
                      child: Text(
                        StringApp.text4,
                        style: drawerTextStyle(),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        cubitChange.textFive();
                        Navigator.pop(context);
                      },
                      child: Text(
                        StringApp.text5,
                        style: drawerTextStyle(),
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

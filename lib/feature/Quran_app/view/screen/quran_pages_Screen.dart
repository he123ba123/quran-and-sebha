import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/style/colors.dart';
import 'package:quran_app/feature/Quran_app/cubit/ayat_sour_cubit.dart';
import 'package:quran_app/feature/Quran_app/cubit/ayat_sour_state.dart';
import 'package:quran_app/feature/Quran_app/view/screen/quran_details_Screen.dart';

class QuranAppScreen extends StatefulWidget {
  const QuranAppScreen({super.key});

  @override
  State<QuranAppScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<QuranAppScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AyatSourCubit()..getPage(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorApp.colorPurple,
            title: const Text(
              'القرآن الكريم',
              style: TextStyle(
                fontFamily: 'Cursive', // Custom font for the title
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          body: BlocBuilder<AyatSourCubit, AyatSourState>(
            builder: (context, state) {
              if (state is AyatSourLoading) {
                return ListView.builder(
                  itemCount: state.AyatSour.length,
                  itemBuilder: (context, index) {
                    final surah = state.AyatSour[index];
                    return Card(
                      color: Color.fromARGB(255, 204, 185, 237),
                      child: ListTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                              child: Text(surah.index.toString()),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              surah.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            Text(
                              ' عدد أياتها: ${surah.ayat}',
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  SurahDetailScreen(surah: surah),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}

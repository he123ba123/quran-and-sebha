import 'package:flutter/material.dart';
import 'package:quran_app/core/style/colors.dart';
import 'package:quran_app/feature/Quran_app/view/screen/quran_pages_Screen.dart';
import 'package:quran_app/feature/Sebha_app/view/screens/sebha_Screen.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        BottomNavigationBarItem(label: 'Setting', icon: Icon(Icons.settings)),
      ]),
      appBar: AppBar(
        backgroundColor: ColorApp.colorPurple,
        title: const Center(
          child: Text(
            'الطريق إلى الجنة',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SizedBox(
        width: 500,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage(
                    "https://blog.ajsrp.com/wp-content/uploads/2024/06/%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86-696x398.jpg"),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    height: 120,
                    width: 150,
                    child: Card(
                      child: TextButton(
                        onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const QuranAppScreen(
                                      
                                    )),
                          );},
                        child: const Text(
                          'القرآن الكريم',
                          style: TextStyle(
                            fontFamily: 'Cursive',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(
                    height: 120,
                    width: 150,
                    child: Card(
                      child: TextButton(
                        onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SebhaAppScreen(
                                    
                                    )),
                          );},
                        child: const Text(
                          'السبحة',
                          style: TextStyle(
                            fontFamily: 'Cursive',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

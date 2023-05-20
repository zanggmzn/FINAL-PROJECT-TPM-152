import 'package:flutter/material.dart';
import 'package:projekakhir_tpm/view/login_page.dart';
class Bantuan extends StatefulWidget {
  const Bantuan({super.key});

  @override
  State<Bantuan> createState() => _BantuanState();
}

class _BantuanState extends State<Bantuan> {
  final List<String> _stopwatchInstructions = [
    'Tap the "Start" button to begin the stopwatch.',
    'Tap the "flag" button to laps the stopwatch',
    'Tap the "Pause" button to pause the stopwatch.',
    'Tap the "Reset" button to reset the stopwatch.',
  ];

  final List<String> _recommendations = [
    'Open the recommendation page.',
    'Choose your favorite wristwatch.',
    'Click on the icon love to add into favorite page.',
    'Then, the icon will be red. ',
    'Click again on the red love icon to delete from favorite page.',
  ];

  List<Widget> _buildInstructions() {
    return _stopwatchInstructions
        .map((instruction) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                child:
                    Text('${_stopwatchInstructions.indexOf(instruction) + 1}'),
              ),
              title: Text(instruction),
            ))
        .toList();
  }

  List<Widget> _buildRecommendations() {
    return _recommendations
        .map((recommendation) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                child: Text('${_recommendations.indexOf(recommendation) + 1}'),
              ),
              title: Text(recommendation),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xfff0f1f5),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Helpdesk'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Stopwatch'),
              Tab(text: 'Favorit'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How to use the Stopwatch:',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Column(children: _buildInstructions()),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How to Add to Favorit:',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Column(children: _buildRecommendations()),
                    Positioned(
                      bottom: 50,
                      right: 30,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 80,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                                (Route<dynamic> route) => false);
                          },
                          child: const Text('Logout'),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 44, 44),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
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

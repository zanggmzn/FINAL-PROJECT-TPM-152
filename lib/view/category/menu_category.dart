import 'package:flutter/material.dart';
import 'package:projekakhir_tpm/view/category/category_blush.dart';
import 'package:projekakhir_tpm/view/category/foundation.dart';
import 'package:projekakhir_tpm/view/category/lipstick.dart';
import 'package:projekakhir_tpm/view/category/nailpolish.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;
class MenuUtama extends StatefulWidget {
  const MenuUtama({super.key});

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff0f1f5),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(18),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.35,
                child: Image.asset('images/revlon.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: '            REVLON PRODUCT',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * .35,
                child: Stack(
                  children: [
                    Positioned(
                      top: -20,
                      right: 50,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 100,
                        width: 300,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: const BorderSide(
                                width: 2, color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LipstickCategory(),
                                ));
                          },
                          child: const Text(
                            "L I P S T I C K",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 50,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 100,
                        width: 300,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: const BorderSide(
                                width: 2, color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FoundationCategory(),
                                ));
                          },
                          child: const Text(
                            "F O U N D A T I O N",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      right: 50,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 100,
                        width: 300,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: const BorderSide(
                                width: 2, color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const NailPolishCategory(),
                                ));
                          },
                          child: const Text(
                            "N A I L P O L I S H",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      right: 50,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 100,
                        width: 300,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: const BorderSide(
                                width: 2, color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryBlush(),
                                ));
                          },
                          child: const Text(
                            "B L U S H",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

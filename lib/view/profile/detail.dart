import 'package:flutter/material.dart';
class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               CircleAvatar(
                radius: size.height / 13,
                backgroundImage: AssetImage('images/iyak.jpeg'),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: size.height / 15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(70)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      )
                    ]),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                        top: 15,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [                             
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: const Text(
                                    'Nama : Maulida Maizani Assabila',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ), 
                          ],
                        )),
                      ],
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
               Container(
                height: size.height / 15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(70)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      )
                    ]),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                        top: 15,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: const Text(
                                    'NIM : 123200152',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ],
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
               Container(
                height: size.height / 10.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(70)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      )
                    ]),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                        top: 15,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: const Text(
                                    'Kelas : Teknologi Pemrograman Mobile IF-D',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ],
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
               Container(
                height: size.height / 10.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(70)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      )
                    ]),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                        top: 15,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: const Text(
                                    'Saran : Mungkin tugas dapat diminimalisir',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ],
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
               Container(
                height: size.height / 10.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(70)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      )
                    ]),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                        top: 15,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: const Text(
                                    'Kesan : Dosen menjelaskan materi dengan detail dan rajin mengajar ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ],
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
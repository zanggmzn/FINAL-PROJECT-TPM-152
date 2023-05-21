import 'package:flutter/material.dart';
import 'package:projekakhir_tpm/controller/shared_preference.dart';
import 'package:projekakhir_tpm/view/profile/detail.dart';

import '../auth/login_page.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});
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
                height: 20,
              ),
              Container(
                height: size.height * .26,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                    const Positioned(
                      top: 10,
                      left: 20,
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 60,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.account_circle_outlined,
                                  color: Colors.grey,
                                ),
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
                            SizedBox(
                              width: size.width * .8,
                              child: const Divider(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 120,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.key,
                                  color: Colors.grey,
                                ),
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
                            SizedBox(
                              width: size.width * .8,
                              child: const Divider(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                      bottom: -6,
                      right: 30,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 80,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            SharedPreference().setLogout();
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                                (route) => false);
                          },
                          child: const Text('Logout'),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 44, 44),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                    Positioned(
                      bottom: -6,
                      right: 200,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 80,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Detail(),
                                ));
                          },
                          child: const Text('Detail'),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

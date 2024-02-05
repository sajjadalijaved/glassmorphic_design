import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:glass_morphism/home_screen.dart';
import 'package:glassmorphism/glassmorphism.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(
              60,
              32,
              189,
              0.91,
            ),
            Color.fromRGBO(60, 38, 223, 0.71)
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                  top: constraints.maxHeight * 0.3,
                  left: constraints.maxWidth * 0.00,
                  child: Container(
                    height: constraints.maxHeight * 0.15,
                    width: constraints.maxWidth * 0.35,
                    decoration: const BoxDecoration(
                        gradient: RadialGradient(colors: [
                          Color.fromRGBO(52, 64, 245, 1),
                          Color.fromRGBO(44, 130, 177, 1),
                        ], radius: 0.7),
                        shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                  top: constraints.maxHeight * 0.55,
                  right: constraints.maxWidth * 0.00,
                  child: Container(
                    height: constraints.maxHeight * 0.15,
                    width: constraints.maxWidth * 0.35,
                    decoration: BoxDecoration(
                        gradient: RadialGradient(colors: [
                          Colors.red,
                          Colors.pink.withOpacity(0.5),
                        ], radius: 0.7),
                        shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GlassmorphicContainer(
                      height: MediaQuery.sizeOf(context).height * 0.4,
                      width: MediaQuery.sizeOf(context).width * 0.85,
                      border: 2,
                      blur: 6,
                      borderRadius: 10,
                      linearGradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.05),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderGradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.05),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "WELCOME",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: const EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle:
                                          const TextStyle(color: Colors.black),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle:
                                          const TextStyle(color: Colors.black),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const GlassmorphicHomeScreen(),
                                  ),
                                );
                              },
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                      child: Text(
                                    "Log In",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

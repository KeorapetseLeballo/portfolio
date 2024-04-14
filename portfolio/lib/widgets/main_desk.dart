import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/colors.dart';

class MainDesk extends StatelessWidget {
  const MainDesk({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0,
                vertical: 20.0),
                height: screenHeight/1.2,
                constraints: const BoxConstraints(minHeight: 350.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    colors: [Colors.black, Color.fromARGB(219, 11, 0, 82)]
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Hi there\nMy name is Keorapetse\nI am a developer!",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 300,
                          child: ElevatedButton(onPressed: () {}, child: Text("Get in touch with me!"), ))
                      ],
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/portfolioimage.jpg"),
                      radius: 120,
                    ),
                  ],
                ),
              );
  }
}
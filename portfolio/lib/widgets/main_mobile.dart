import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return  Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                height: screenHeight,
                constraints: const BoxConstraints(
                  minHeight: 560.0,),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    colors: [Colors.black, Color.fromARGB(219, 11, 0, 82)]
                    )
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Avater
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/portfolioimage.jpg"),
                        radius: 120,
                      ),
                      const SizedBox(height: 30,),
                      //intro
                      const Text(
                          "Hi there!\nMy name is Keorapetse\nI am a developer!",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                            height: 1.5,
                          ),
                        ),

                      //btn
                      const SizedBox(height: 40),
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(onPressed: () {}, 
                          child: const Text("Get in touch with me!"), ))
                    ],
                  ),
              );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/main_desk.dart';
import 'package:portfolio/widgets/main_mobile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;

    return  LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          endDrawer: constraints.maxWidth >= minDesktopWidth? null : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
             if(constraints.maxWidth >= minDesktopWidth)
             const HeaderDesktop() else
             HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
             ),

               if(constraints.maxWidth >= minDesktopWidth)
               const MainDesk() else
               const MainMobile(),
              //SKILLS
              Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: const Color.fromARGB(219, 11, 0, 82),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    Text("What I can do",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  //platforn
                  Row(
                    children: [
                      //platforms
                      Wrap(
                        children: [
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(5), 
                            ),
                            child: ListTile(
                              leading: Image.asset(""),
                              title: Text(""),),
                          )
                        ],)
                    ],),
                  

                  ],
                ),
              ),
              //PROJECTS
              Container(
                height: 500,
                width: double.maxFinite,
                
              ),
              //CONTACT
              Container(
                height: 500,
                width: double.maxFinite,
                color: const Color.fromARGB(219, 11, 0, 82),
              ),
              //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
              
              ),
            
            ],
          ),
        );
      }
    );
  }
}
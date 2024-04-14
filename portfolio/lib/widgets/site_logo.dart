import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap,});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                  onTap: onTap,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text("K Leballo", style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary
                    ),
                                    ),
                  ),
              );
  }
}
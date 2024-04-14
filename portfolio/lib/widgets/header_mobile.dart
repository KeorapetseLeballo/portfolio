import 'package:flutter/material.dart';
import 'package:portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 60.0,
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                right: Radius.elliptical(15.0,15.0),
                left: Radius.elliptical(15, 15.0)),
              gradient: LinearGradient(colors: [
                Colors.black,
                Color.fromARGB(219, 11, 0, 82)])
            ),
            child: Row(
              children: [
                SiteLogo(onTap: onLogoTap,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onMenuTap,
                  icon: const Icon(Icons.menu),
                ),
                const SizedBox(
                  width: 15,
                )
              ],
              
            )
          );
  }
}
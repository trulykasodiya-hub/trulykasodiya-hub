

import 'package:flutter/material.dart';
import 'package:trushitkasodiya/constances.dart';

import '../responsive.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isMobile(context) ? const EdgeInsets.only(top: defaultPadding*2,left: defaultPadding,right: defaultPadding) : const EdgeInsets.only(top: defaultPadding*2,left: defaultPadding*4,right: defaultPadding*4),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
          color: indigoColor,
          borderRadius: BorderRadius.circular(defaultPadding/2),
        ),
        child:  Center(
          child: ListTile(
            leading:const Icon(Icons.label_important_rounded,color: whiteColor),
            title: Text(
              "Click here to go to the my best Portfolio Page",
              style: TextStyle(fontSize: Responsive.isMobile(context) ? 12.0 : 20.0,color: whiteColor),
            ),
            trailing:const Icon(Icons.arrow_forward_ios,color: whiteColor),
          ),
        ),
      ),
    );
  }
}

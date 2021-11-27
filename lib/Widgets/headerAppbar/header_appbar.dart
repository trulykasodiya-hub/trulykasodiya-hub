import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constances.dart';
import '../../responsive.dart';

AppBar headerAppbar(context) {
  return AppBar(
    toolbarHeight: 60,
    elevation: 0.0,
    centerTitle: false,
    excludeHeaderSemantics: true,
    automaticallyImplyLeading: false,
    backgroundColor: customPurpleColor,
    title: Responsive.isDesktop(context) ? Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const  SizedBox(width: defaultPadding,),
        Image.asset('assets/images/avatar.png',height: 35),
        const  SizedBox(width: defaultPadding,),
        Text("Personal",style: GoogleFonts.montserrat(
          textStyle: Theme.of(context).textTheme.headline4,
          fontWeight: FontWeight.w500,
          color: whiteColor,
          fontStyle: FontStyle.normal,
        ),),
      ],
    ) : Image.asset('assets/images/avatar.png',height: 35),

    actions: [
      if(Responsive.isDesktop(context)) Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Home",style: GoogleFonts.montserrat(
            textStyle:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),),
          const SizedBox(width: defaultPadding*2,),
          Text("Service",style: GoogleFonts.montserrat(
            textStyle:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),),
          const SizedBox(width: defaultPadding*2,),
          Text("Portfolio",style: GoogleFonts.montserrat(
            textStyle:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),), const SizedBox(width: defaultPadding*2,),
          Text("Blogs",style: GoogleFonts.montserrat(
            textStyle:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),),
          const SizedBox(width: defaultPadding*2,),
          Text("About Me",style: GoogleFonts.montserrat(
            textStyle:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),),
          const  SizedBox(width: defaultPadding*2,),
          Text("Contact Me",style: GoogleFonts.montserrat(
            textStyle:const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),),
          const SizedBox(width: defaultPadding*2,),
        ],
      )
    ],
  );
}

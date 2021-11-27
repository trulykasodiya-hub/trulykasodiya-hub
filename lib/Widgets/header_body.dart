
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constances.dart';
import '../responsive.dart';

class HeaderBody extends StatelessWidget {
  const HeaderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 760,
          width: MediaQuery.of(context).size.width,
          decoration:   BoxDecoration(
              image: Responsive.isMobile(context) ? const DecorationImage(
                  image:  AssetImage("assets/images/mobileHeader.png"),
                  fit: BoxFit.cover) : const DecorationImage(
                  image:  AssetImage("assets/images/profileHeader.png"),
                  fit: BoxFit.cover)),
          child:Padding(
            padding:  EdgeInsets.only(top: Responsive.isMobile(context) ? 30 :  58.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Trushit Kasodiya",style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline1 ,
                      color: customDarkPurpleColor,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),textAlign: TextAlign.center,),
                    const  SizedBox(height: defaultPadding/2,),
                    Responsive.isMobile(context) ? Text("Website / Mobile App Developer",style: GoogleFonts.nunito(
                      textStyle: const TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500,color: Colors.white) ,
                      fontStyle: FontStyle.normal,
                      color: const Color(0xFF26273B),
                    ),textAlign: TextAlign.center,) : Text("I'm a software engineer specialised in frontend and backend development for complex scalable \nMobile Application, website and web apps like windows, macos and Linux.",style: GoogleFonts.nunito(
                      textStyle:Theme.of(context).textTheme.headline5,
                      fontStyle: FontStyle.normal,
                      color: const Color(0xFF26273B),
                    ),textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}


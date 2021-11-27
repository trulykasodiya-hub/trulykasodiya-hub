import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constances.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width,
      color: customPurpleColor,
      child: Center(child:  Text("Footer",style: GoogleFonts.montserrat(
        textStyle: Theme.of(context).textTheme.headline4,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),),),
    );
  }
}

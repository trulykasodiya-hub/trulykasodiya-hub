

import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trushitkasodiya/MyHomePage/announcement.dart';
import 'package:trushitkasodiya/MyHomePage/sub_heading.dart';
import 'package:trushitkasodiya/responsive.dart';

import '../constances.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
//color: Color(0xfffafafa),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: Responsive.isMobile(context) ? const EdgeInsets.only(top: defaultPadding*2,left: defaultPadding,right: defaultPadding) : const EdgeInsets.only(top: defaultPadding*3,left: defaultPadding*4,right: defaultPadding*4),
              child: Responsive.isMobile(context) ?  Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        //  Announcement(),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: customPurpleColor),
                              borderRadius: BorderRadius.circular(defaultPadding/1.7)
                          ),
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(defaultPadding/2),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("About Me",style: GoogleFonts.inter(
                                  textStyle: Theme.of(context).textTheme.headline4,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  color: customDarkPurpleColor,
                                  fontSize: 17
                              ),textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        const  SizedBox(height: defaultPadding*2),
                        Text("My motives behind creating this website",style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: customDarkPurpleColor, fontSize: 30.0),textAlign: TextAlign.center),
                        const  SizedBox(height: defaultPadding*3),
                        SizedBox(
                          height: 40,
                          width: 300,
                          child: TabBar(
                              isScrollable: false,
                              physics:const NeverScrollableScrollPhysics(),
                              unselectedLabelColor: customPurpleColor,
                              indicatorSize: TabBarIndicatorSize.tab,
                              dragStartBehavior: DragStartBehavior.down,
                              indicator: BoxDecoration(
                                  gradient:const LinearGradient(
                                      colors: [customPurpleColor, coolPurpleColor]),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.redAccent),
                              tabs:const [
                                Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("My Self",style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("My Goal",style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("My Vision",style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ]),
                        ),
                        const SizedBox(height: defaultPadding*3),
                        SizedBox(
                          height: 650,
                          child: Padding(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: SizedBox(
                              child: TabBarView(
                                  physics:const NeverScrollableScrollPhysics(),
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/illustration_1.png",height: 200,),
                                          const SizedBox(height: defaultPadding),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height:  Responsive.isDesktop(context) ? defaultPadding*4 : 0),
                                                subHeading(context),
                                                const  SizedBox(height: defaultPadding),
                                                Text(homePageAboutText1,style: GoogleFonts.inter(fontSize: 18.0)),
                                                SizedBox(height: Responsive.isDesktop(context) ? defaultPadding*2 : defaultPadding),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),      gradient:const LinearGradient(
                                                        colors: [customPurpleColor, coolPurpleColor])),
                                                      child:const Center(child: Text('View More',style: TextStyle(color: whiteColor))),
                                                    ),
                                                    SizedBox(width: Responsive.isDesktop(context) ? defaultPadding*1.5 : 0),
                                                    Responsive.isDesktop(context) ? Container(
                                                      height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: yellowColor),
                                                      child:const Center(child: Text('Download Resume',style: TextStyle(color: whiteColor))),
                                                    ) :  const  SizedBox(width: 0),
                                                  ],
                                                )
                                              ],),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/illustration_1.png",height: 200,),
                                          const SizedBox(height: defaultPadding),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(homePageAboutText1,style: GoogleFonts.inter(fontSize: 18.0)),
                                                const SizedBox(height: defaultPadding),
                                              ],),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/illustration_1.png",height: 200,),
                                          const SizedBox(height: defaultPadding),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(homePageAboutText1,style: GoogleFonts.inter(fontSize: 18.0)),
                                                const SizedBox(height: defaultPadding),
                                              ],),
                                          ),


                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        const  SizedBox(height: defaultPadding),

                      ],
                    ),
                  ),
                ],
              ) : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      //  Announcement(),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: customPurpleColor),
                            borderRadius: BorderRadius.circular(defaultPadding/1.7)
                          ),
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(defaultPadding/2),
                            child: Text("About Me",style: GoogleFonts.inter(
                                textStyle: Theme.of(context).textTheme.headline4,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: customDarkPurpleColor,
                                fontSize: 17
                            ),),
                          ),
                        ),
                        const  SizedBox(height: defaultPadding*2),
                        Text("My motives behind creating this website",style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: customDarkPurpleColor, fontSize: 36.0)),
                        const  SizedBox(height: defaultPadding*3),
                        SizedBox(
                          height: 40,
                          width: 400,
                          child: TabBar(
                              isScrollable: false,
                              physics:const NeverScrollableScrollPhysics(),
                              unselectedLabelColor: customPurpleColor,
                              indicatorSize: TabBarIndicatorSize.tab,
                              dragStartBehavior: DragStartBehavior.down,
                              indicator: BoxDecoration(
                                  gradient:const LinearGradient(
                                      colors: [customPurpleColor, coolPurpleColor]),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.redAccent),
                              tabs:const [
                                Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("My Self",style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("My Goal",style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Tab(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("My Vision",style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ]),
                        ),
                        const SizedBox(height: defaultPadding*5),
                        SizedBox(
                          height: 430,
                          child: Padding(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: SizedBox(
                              child: TabBarView(
                                  physics:const NeverScrollableScrollPhysics(),
                                  children: [
                                Container(
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: defaultPadding*2),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height:  Responsive.isDesktop(context) ? defaultPadding*4 : 0),
                                                subHeading(context),
                                                const  SizedBox(height: defaultPadding),
                                                Text(homePageAboutText1,style: GoogleFonts.inter(fontSize: 18.0)),
                                                SizedBox(height: Responsive.isDesktop(context) ? defaultPadding*2 : defaultPadding),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0) ,     gradient:const LinearGradient(
    colors: [customPurpleColor, coolPurpleColor]),),
                                                      child:const Center(child: Text('View More',style: TextStyle(color: whiteColor))),
                                                    ),
                                                    SizedBox(width: Responsive.isDesktop(context) ? defaultPadding*1.5 : 0),
                                                    Responsive.isDesktop(context) ? Container(
                                                      height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: yellowColor),
                                                      child:const Center(child: Text('Download Resume',style: TextStyle(color: whiteColor))),
                                                    ) :  const  SizedBox(width: 0),
                                                  ],
                                                )
                                              ],),
                                          )),
                                      const SizedBox(width: defaultPadding*2),
                                      Expanded(
                                          flex: 2,
                                          child: Image.asset("assets/images/illustration_1.png"))
                                    ],
                                  ),
                                ), Container(
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Image.asset("assets/images/illustration_2.png")),
                                          const SizedBox(width: defaultPadding*2),
                                          Expanded(
                                              flex: 3,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: defaultPadding*2),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(height:  Responsive.isDesktop(context) ? defaultPadding*4 : 0),
                                                    subHeading(context),
                                                    const  SizedBox(height: defaultPadding),
                                                    Text(homePageAboutText1,style: GoogleFonts.inter(fontSize: 18.0)),
                                                    const  SizedBox(height: defaultPadding*2),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),      gradient:const LinearGradient(
                                                            colors: [customPurpleColor, coolPurpleColor]),),
                                                          child:const Center(child: Text('View More',style: TextStyle(color: whiteColor))),
                                                        ),
                                                        SizedBox(width: Responsive.isDesktop(context) ? defaultPadding*1.5 : 0),
                                                        Responsive.isDesktop(context) ? Container(
                                                          height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: yellowColor),
                                                          child:const Center(child: Text('Download Resume',style: TextStyle(color: whiteColor))),
                                                        ) :  const  SizedBox(width: 0),
                                                      ],
                                                    )
                                                  ],),
                                              )),


                                        ],
                                      ),
                                    ), Container(
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 3,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: defaultPadding*2),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(height:  Responsive.isDesktop(context) ? defaultPadding*4 : 0),
                                                    subHeading(context),
                                                    const  SizedBox(height: defaultPadding),
                                                    Text(homePageAboutText1,style: GoogleFonts.inter(fontSize: 18.0)),
                                                    const  SizedBox(height: defaultPadding*2),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: customPurpleColor),
                                                          child:const Center(child: Text('View More',style: TextStyle(color: whiteColor))),
                                                        ),
                                                        SizedBox(width: Responsive.isDesktop(context) ? defaultPadding*1.5 : 0),
                                                        Responsive.isDesktop(context) ? Container(
                                                          height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: yellowColor),
                                                          child:const Center(child: Text('Download Resume',style: TextStyle(color: whiteColor))),
                                                        ) :  const  SizedBox(width: 0),
                                                      ],
                                                    )
                                                  ],),
                                              )),
                                          const SizedBox(width: defaultPadding*2),
                                          Expanded(
                                              flex: 2,
                                              child: Image.asset("assets/images/illustration_1.png"))
                                        ],
                                      ),
                                    ),
                              ]),
                            ),
                          ),
                        ),
                        const  SizedBox(height: defaultPadding),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

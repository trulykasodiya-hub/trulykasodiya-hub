

import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trushitkasodiya/MyHomePage/sub_heading.dart';
import 'package:trushitkasodiya/responsive.dart';

import '../constances.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:Responsive.isMobile(context) ? 640 : 600,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: Responsive.isMobile(context) ? const EdgeInsets.only(top: defaultPadding*2,left: defaultPadding,right: defaultPadding) : const EdgeInsets.only(top: defaultPadding*3,left: defaultPadding*4,right: defaultPadding*4),
            child: Responsive.isMobile(context) ?  Container(
              height: 600,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(defaultPadding),
                  border: Border.all(color: Colors.grey.shade400)
              ),
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About Me...",style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),),
                    const SizedBox(height: defaultPadding),
                    Text("I was born in 1999. I live in India and work in Peanut Square LLP as a Software Developer. I’ve been a professional developer for more than 1.5 years. Welcome to my personal website!",style: GoogleFonts.montserrat(
                      fontStyle: FontStyle.normal,
                    ),),
                    const  SizedBox(height: defaultPadding*1.5,),
                    subHeading(context),
                    const  SizedBox(height: defaultPadding*1.5,),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: RichText(
                        text:const TextSpan(
                          text: 'Problem-solvers : ',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),
                          children:  <TextSpan>[
                            TextSpan(text: 'For people at Intelivita, every problem is a new challenge to be conquered.',style:  TextStyle(fontWeight: FontWeight.normal,fontSize: 14.0)),
                          ],
                        ),
                      ),
                    ),
                    const  SizedBox(height: defaultPadding),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: RichText(
                        text:const TextSpan(
                          text: 'My Mission : ',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),
                          children:  <TextSpan>[
                            TextSpan(text: ' is to enhancing the business growth of our customers with creative Design and Development to deliver market-defining high-quality solutions that create value and reliable competitive advantage for our clients around the world.',style:  TextStyle(fontWeight: FontWeight.normal,fontSize: 14.0)),
                          ],
                        ),
                      ),
                    ),
                    const  SizedBox(height: defaultPadding*2),
                    Column(
                      children: [
                        Container(
                          height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: customPurpleColor),
                          child:const Center(child: Text('View More',style: TextStyle(color: whiteColor))),
                        ),
                        const  SizedBox(height: defaultPadding*1.5,),
                        Container(
                          height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: yellowColor),
                          child:const Center(child: Text('Download Resume',style: TextStyle(color: whiteColor))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ) : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(defaultPadding),
                          border: Border.all(color: Colors.grey.shade400),
                          image: const DecorationImage(
                              image:  AssetImage("assets/images/bg.png"),
                              fit: BoxFit.cover)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(defaultPadding*2),
                        child: Stack(
                          children: [
                            Center(
                              child: Image.asset("assets/images/device_frame.png",  height: 400,),
                            ),
                            Positioned(
                                right: 0,
                                left: 100,
                                top: 0,
                                bottom: 0,
                                child:  Container(
                                  height: 500,
                                  child: DeviceFrame(
                                      device: Devices.ios.iPhone13ProMax,
                                      isFrameVisible: true,
                                      orientation: Orientation.portrait,
                                      screen: CarouselSlider(
                                        options: CarouselOptions(height: MediaQuery.of(context).size.height,viewportFraction: 2,autoPlayInterval:const Duration(milliseconds: 3000),
                                            autoPlayAnimationDuration:const Duration(milliseconds: 200),
                                            autoPlayCurve: Curves.bounceInOut,
                                            enlargeCenterPage: true,
                                            autoPlay: true),
                                        items: ["https://images.unsplash.com/photo-1584626063607-b385c9f727cf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bG92ZSUyMGhhdGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60","https://images.unsplash.com/photo-1511898290398-cee3038fa7a7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bG92ZSUyMGhhdGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60","https://images.unsplash.com/photo-1518621736915-f3b1c41bfd00?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGxvdmUlMjBoYXRlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60","https://images.unsplash.com/photo-1550155864-3033f844da36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGxvdmUlMjBoYXRlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60","https://images.unsplash.com/photo-1468853692559-fc594e932a2d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fGxvdmUlMjBoYXRlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"].map((i) {
                                          return Builder(
                                            builder: (BuildContext context) {
                                              return Container(
                                                height: MediaQuery.of(context).size.height,
                                                width: MediaQuery.of(context).size.width,
                                                // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                                decoration: BoxDecoration(
                                                    image:   DecorationImage(
                                                      image:  NetworkImage(i.toString()),
                                                      fit: BoxFit.cover,
                                                    )
                                                ),
                                              );
                                            },
                                          );
                                        }).toList(),
                                      )
                                  ),
                                )),
                          ],
                        ),
                      ),
                    )
                ),
                const  SizedBox(width: defaultPadding*2),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(defaultPadding),
                        border: Border.all(color: Colors.grey.shade400)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding*2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About Me...",style: GoogleFonts.montserrat(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),),
                          const  SizedBox(height: defaultPadding),
                          Text("I was born in 1999. I live in India and work in Peanut Square LLP as a Software Developer. I’ve been a professional developer for more than 1.5 years. Welcome to my personal website!",style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.normal,
                          ),),
                          const  SizedBox(height: defaultPadding*1.5,),
                          subHeading(context),
                          const  SizedBox(height: defaultPadding*1.5,),
                          ListTile(
                            leading:const Icon(Icons.check_circle,color: greenColor,),
                            title: RichText(
                              text:const TextSpan(
                                text: 'Problem-solvers : ',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),
                                children:  <TextSpan>[
                                  TextSpan(text: 'For people at Intelivita, every problem is a new challenge to be conquered.',style:  TextStyle(fontWeight: FontWeight.normal,fontSize: 14.0)),
                                ],
                              ),
                            ),
                          ),
                          const  SizedBox(height: defaultPadding),
                          ListTile(
                            leading:const Icon(Icons.check_circle,color: greenColor,),
                            title: RichText(
                              text:const TextSpan(
                                text: 'My Mission : ',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),
                                children:  <TextSpan>[
                                  TextSpan(text: ' is to enhancing the business growth of our customers with creative Design and Development to deliver market-defining high-quality solutions that create value and reliable competitive advantage for our clients around the world.',style:  TextStyle(fontWeight: FontWeight.normal,fontSize: 14.0)),
                                ],
                              ),
                            ),
                          ),
                          const  SizedBox(height: defaultPadding*2),
                          Row(
                            children: [
                              Container(
                                height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: customPurpleColor),
                                child:const Center(child: Text('View More',style: TextStyle(color: whiteColor))),
                              ),
                              const  SizedBox(width: defaultPadding*1.5,),
                              Container(
                                height: 45,width: 160,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: yellowColor),
                                child:const Center(child: Text('Download Resume',style: TextStyle(color: whiteColor))),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trushitkasodiya/About_Me/about_me.dart';
import 'package:trushitkasodiya/MyHomePage/sub_heading.dart';
import 'package:trushitkasodiya/Widgets/Footer/footer.dart';
import 'package:trushitkasodiya/Widgets/headerAppbar/header_appbar.dart';
import 'package:trushitkasodiya/Widgets/header_body.dart';
import 'package:trushitkasodiya/responsive.dart';

import '../constances.dart';
import 'announcement.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: headerAppbar(context),
        resizeToAvoidBottomInset: true,
        endDrawer: const Drawer(child:Center(child:Text('Developing...)'))),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children:   [
               HeaderBody(),
               SizedBox(height: defaultPadding,),
               Announcement(),
               AboutMePage(),
              Padding(
                padding: Responsive.isMobile(context) ? const EdgeInsets.only(top: defaultPadding*2,left: defaultPadding,right: defaultPadding) : const EdgeInsets.only(left: defaultPadding*4,right: defaultPadding*4),
                child: SizedBox(

                  child: GridView.count(
                    primary: false,
                    shrinkWrap: true,
                    crossAxisCount: 1,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 16/3,
                    children: <Widget>[
                      Container(
                        height: 70,
                        padding: const EdgeInsets.all(8),
                        child: const Text('First', style: TextStyle(fontSize: 20)),
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 70,
                        padding: const EdgeInsets.all(8),
                        child: const Text('Second', style: TextStyle(fontSize: 20)),
                        color: Colors.blue,
                      ),
                      Container(
                        height: 70,
                        padding: const EdgeInsets.all(8),
                        child: const Text('Third', style: TextStyle(fontSize: 20)),
                        color: Colors.blue,
                      ),
                      Container(
                        height: 70,
                        padding: const EdgeInsets.all(8),
                        child: const Text('Four', style: TextStyle(fontSize: 20)),
                        color: Colors.yellow,
                      ),

                    ],
                  ),
                ),
              ),
          Footer(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: customPurpleColor,
          onPressed: () {
            AdaptiveTheme.of(context).toggleThemeMode();
          },
          tooltip: 'Top',
          child: const Icon(Icons.arrow_upward),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

}

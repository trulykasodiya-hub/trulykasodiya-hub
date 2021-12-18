
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:trushitkasodiya/About_Me/about_me.dart';
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
        backgroundColor: Colors.white,
        appBar: headerAppbar(context),
        resizeToAvoidBottomInset: true,
        endDrawer: const Drawer(child:Center(child:Text('Developing...)'))),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: const  [
              HeaderBody(),
              AboutMePage(),
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

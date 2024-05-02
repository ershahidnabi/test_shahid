import 'package:app/widgets/blog.dart';
import 'package:app/widgets/button.dart';
import 'package:app/widgets/header.dart';
import 'package:app/widgets/info.dart';
import 'package:app/widgets/lang.dart';
import 'package:app/widgets/passion.dart';
import 'package:app/widgets/social.dart';
import 'package:app/widgets/textbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/*
Using same call function i used in language widget and my info widget we can use the same for blogpost, textbox, and social.
due to too much time gap since in last used flutter almost mor than 1 year, also i was a beginner.
i need a little guidance i will give my best for the work and company
*/

// also for styling we Icon create a constant file

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            MyHeader(),
            // for these there we can also use list
            MyInfoWidget(),
            MyLang(),
            MyPassion(),
            // for thse cwe can call api or create a json
            BlogWidget(),
            Textbox(),
            // again list can be used and the approach already used
            Social(),
            // we can make a call for a button and then put styling as per needs
            Report(),
          ],
        ),
      )),
    );
  }
}

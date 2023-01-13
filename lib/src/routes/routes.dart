import 'package:flutter/material.dart';

import 'package:flutter_tutorial_final/src/basics_screen/basics_page.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/01_animated_container.dart';



Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {

    // '/homePage'                  : (BuildContext context) => HomePage(),
    '/basics'         : (BuildContext context) => const BasicsPage(showNavBottomBar: true), 
    '/basics_01'         : (BuildContext context) => const AnimatedContainerDemo(),

  };

}
import 'package:flutter/material.dart';

import 'package:flutter_tutorial_final/src/basics_screen/basics_page.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/01_animated_builder.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/02_page_route_builder.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/03_animation_controller.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/04_tweens.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/05_animated_container.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/06_custom_tween.dart';



Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {

    // '/homePage'                  : (BuildContext context) => HomePage(),
    '/basics'         : (BuildContext context) => const BasicsPage(showNavBottomBar: true), 
    '/basics_01'         : (BuildContext context) => const AnimatedBuilderDemo(),
    '/basics_02'         : (BuildContext context) => const PageRouteBuilderDemo(),
    '/basics_03'         : (BuildContext context) => const AnimationControllerDemo(),
    '/basics_04'         : (BuildContext context) => const TweenDemo(),
    '/basics_05'         : (BuildContext context) => const AnimatedContainerDemo(),
    '/basics_06'         : (BuildContext context) => const CustomTweenDemo(),
    // '/basics_07'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_08'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_09'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_10'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_11'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_12'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_13'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_14'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_15'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_16'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_17'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_18'         : (BuildContext context) => const AnimatedContainerDemo(),
    // '/basics_19'         : (BuildContext context) => const AnimatedContainerDemo(),


  };

}
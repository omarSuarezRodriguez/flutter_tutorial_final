import 'package:flutter/material.dart';

import 'package:flutter_tutorial_final/src/basics_screen/basics_page.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/01_animated_builder.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/02_page_route_builder.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/03_animation_controller.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/04_tweens.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/05_animated_container.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/06_custom_tween.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/07_tween_sequence.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/08_fade_transition.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/09_hero_animation.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/10_animated_list.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/11_animated_positioned.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/12_animated_switcher.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/13_card_swipe.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/14_carousel.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/15_curved_animation.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/16_expand_card.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/17_focus_image.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/18_physics_card_drag.dart';
import 'package:flutter_tutorial_final/src/basics_screen/pages/19_repeating_animation.dart';



Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {

    '/basics'            : (BuildContext context) => const BasicsPage(showNavBottomBar: true), 
    '/basics_01'         : (BuildContext context) => const AnimatedBuilderDemo(),
    '/basics_02'         : (BuildContext context) => const PageRouteBuilderDemo(),
    '/basics_03'         : (BuildContext context) => const AnimationControllerDemo(),
    '/basics_04'         : (BuildContext context) => const TweenDemo(),
    '/basics_05'         : (BuildContext context) => const AnimatedContainerDemo(),
    '/basics_06'         : (BuildContext context) => const CustomTweenDemo(),
    '/basics_07'         : (BuildContext context) => const TweenSequenceDemo(),
    '/basics_08'         : (BuildContext context) => const FadeTransitionDemo(),
    '/basics_09'         : (BuildContext context) => const HeroAnimationDemo(),
    '/basics_10'         : (BuildContext context) => const AnimatedListDemo(),
    '/basics_11'         : (BuildContext context) => const AnimatedPositionedDemo(),
    '/basics_12'         : (BuildContext context) => const AnimatedSwitcherDemo(),
    '/basics_13'         : (BuildContext context) => const CardSwipeDemo(),
    '/basics_14'         : (BuildContext context) => CarouselDemo(),
    '/basics_15'         : (BuildContext context) => const CurvedAnimationDemo(),
    '/basics_16'         : (BuildContext context) => const ExpandCardDemo(),
    '/basics_17'         : (BuildContext context) => const FocusImageDemo(),
    '/basics_18'         : (BuildContext context) => const PhysicsCardDragDemo(),
    '/basics_19'         : (BuildContext context) => const RepeatingAnimationDemo(),


  };

}
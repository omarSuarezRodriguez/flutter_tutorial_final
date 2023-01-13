// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_tutorial_final/src/routes/routes.dart';

// import 'color_palettes_screen/color_palettes_screen.dart';
import 'component_screen/component_screen.dart';
// import 'elevation_screen/elevation_screen.dart';
// import 'typography_screen/typography_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// NavigationRail shows if the screen width is greater or equal to
// screenWidthThreshold; otherwise, NavigationBar is used for navigation.
const double narrowScreenWidthThreshold = 450;

const Color m3BaseColor = Color(0xff6750a4);
const List<Color> colorOptions = [
  m3BaseColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];
const List<String> colorText = <String>[
  "M3 Baseline",
  "Blue",
  "Teal",
  "Green",
  "Yellow",
  "Orange",
  "Pink",
];

class _MyAppState extends State<MyApp> {
  bool useMaterial3 = true;
  bool useLightMode = true;
  int colorSelected = 0;
  int screenIndex = 0;

  late ThemeData themeData;

  @override
  initState() {
    super.initState();
    themeData = updateThemes(colorSelected, useMaterial3, useLightMode);
  }

  ThemeData updateThemes(int colorIndex, bool useMaterial3, bool useLightMode) {
    return ThemeData(
        colorSchemeSeed: colorOptions[colorSelected],
        useMaterial3: useMaterial3,
        brightness: useLightMode ? Brightness.light : Brightness.dark);
  }

  void handleScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  void handleBrightnessChange() {
    setState(() {
      useLightMode = !useLightMode;
      themeData = updateThemes(colorSelected, useMaterial3, useLightMode);
    });
  }

  void handleMaterialVersionChange() {
    setState(() {
      useMaterial3 = !useMaterial3;
      themeData = updateThemes(colorSelected, useMaterial3, useLightMode);
    });
  }

  void handleColorSelect(int value) {
    setState(() {
      colorSelected = value;
      themeData = updateThemes(colorSelected, useMaterial3, useLightMode);
    });
  }

  Widget createScreenFor(int screenIndex, bool showNavBarExample) {
    switch (screenIndex) {
      case 0:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
      case 1:
        // return const ColorPalettesScreen();
      case 2:
        // return const TypographyScreen();
      case 3:
        // return const ElevationScreen();
      default:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
    }
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: useMaterial3
          ? const Text("Flutter Tutorial")
          : const Text("Flutter Tutorial"),
      actions: [

        PopupMenuButton(
          icon: const Icon(Icons.color_lens_outlined),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          itemBuilder: (context) {
            return List.generate(colorOptions.length, (index) {
              return PopupMenuItem(
                  value: index,
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          index == colorSelected
                              ? Icons.color_lens
                              : Icons.color_lens_outlined,
                          color: colorOptions[index],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(colorText[index]))
                    ],
                  ));
            });
          },
          onSelected: handleColorSelect,
        ),

        // IconButton(
        //   icon: useMaterial3
        //       ? const Icon(Icons.filter_1)
        //       : const Icon(Icons.filter_2),
        //   onPressed: handleMaterialVersionChange,
        //   tooltip: "Cambiar tema",
        // ),
        PopupMenuButton(
          
          icon: const Icon(Icons.more_vert),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          itemBuilder: (context) => [

            PopupMenuItem(
              onTap: handleBrightnessChange,
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      useLightMode ? Icons.wb_sunny : Icons.wb_sunny_outlined, color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: useLightMode
                        ? const Text("Tema Oscuro")
                        : const Text("Tema Claro"),
                  ),
                ],
              ),
            ),


        //     IconButton(
        //   icon: useMaterial3
        //       ? const Icon(Icons.filter_1)
        //       : const Icon(Icons.filter_2),
        //   onPressed: handleMaterialVersionChange,
        //   tooltip: "Cambiar tema",
        // ),

            PopupMenuItem(
              onTap: handleMaterialVersionChange,
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      useMaterial3 ? Icons.filter_2 : Icons.filter_1, color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: useMaterial3
                        ? const Text("Skin 2")
                        : const Text("Skin 1"),
                  ),
                ],
              ),
            ),

            PopupMenuItem(
              child: Wrap(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.code, color: Colors.grey,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Descargar Código"),
                  ),
                ],
              ),
            ),

            

            

            
            

            // PopupMenuItem(
            //   onTap: handleBrightnessChange,
            //   child: Wrap(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(top: 0),
            //         child: Icon(
            //           useLightMode
            //           ? Icons.wb_sunny_outlined
            //           : Icons.wb_sunny,
            //         ),
            //       ),
            //       const Padding(
            //         padding: EdgeInsets.only(top: 10, left: 5),
            //         child: Text("Cambiar Tema"),
            //       ),
            //     ],
            //   ),
            // ),

            // PopupMenuItem(
            //   onTap: handleBrightnessChange,
            //   child: Wrap(
            //     children: [

            //         IconButton(
            //         icon: useLightMode
            //             ? const Icon(Icons.wb_sunny_outlined)
            //             : const Icon(Icons.wb_sunny),
            //         onPressed: handleBrightnessChange,
            //         tooltip: "Toggle brightness",
            //         ),

            //       ListTile(title: const Text("Cambiar Tema"), onTap: handleBrightnessChange,),

            //     ],
            //   ),
            // ),

            // PopupMenuItem(
            //   child: Wrap(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(left: 10),
            //         child: IconButton(
            //         icon: useLightMode
            //             ? const Icon(Icons.wb_sunny_outlined)
            //             : const Icon(Icons.wb_sunny),
            //         onPressed: handleBrightnessChange,
            //         tooltip: "Toggle brightness",
            //         ),
            //       ),
            //       const Padding(
            //         padding: EdgeInsets.only(left: 5),
            //         child: ListTile(title: Text("Cambiar Tema")),
            //       ),
            //     ],
            //   ),
            // ),
          ],

          

          // Wrap(
          //   children: const [
          //     Padding(
          //       padding: EdgeInsets.only(left: 10),
          //       child: Icon(Icons.color_lens),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.only(left: 20),
          //       child: Text("Hola"),
          //     ),
          //   ],
          // ),

          // itemBuilder: (context) {

          //   return List.generate(colorOptions.length, (index) {
          //     return PopupMenuItem(
          //         value: index,
          //         child: Wrap(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(left: 10),
          //               child: Icon(
          //                 index == colorSelected
          //                     ? Icons.color_lens
          //                     : Icons.color_lens_outlined,
          //                 color: colorOptions[index],
          //               ),
          //             ),
          //             Padding(
          //                 padding: const EdgeInsets.only(left: 20),
          //                 child: Text(colorText[index]))
          //           ],
          //         ));
          //   });

          // },
        ),

        

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       // Rutas
      routes: getApplicationRoutes(),
      
      debugShowCheckedModeBanner: false,
      title: 'Material 3',
      themeMode: useLightMode ? ThemeMode.light : ThemeMode.dark,
      theme: themeData,
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < narrowScreenWidthThreshold) {
          return Scaffold(
            appBar: createAppBar(),
            body: Row(children: <Widget>[
              createScreenFor(screenIndex, false),
            ]),
            bottomNavigationBar: NavigationBars(
              onSelectItem: handleScreenChanged,
              selectedIndex: screenIndex,
              isExampleBar: false,
            ),
          );
        } else {
          return Scaffold(
            appBar: createAppBar(),
            body: SafeArea(
              bottom: false,
              top: false,
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: NavigationRailSection(
                          onSelectItem: handleScreenChanged,
                          selectedIndex: screenIndex)),
                  const VerticalDivider(thickness: 1, width: 1),
                  createScreenFor(screenIndex, true),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}






// import 'package:flutter/material.dart';

// import 'routes/routes.dart';
// // import 'package:app_tienda_virtual/src/pages/alert_page.dart';



// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(

//       // Desactivar Banner de debug
//       debugShowCheckedModeBanner: false,


//       // Título de la App
//       title: 'Flutter Tutorial',


//       // Ruta inicial
//       initialRoute: '/basics',


      // // Rutas
      // routes: getApplicationRoutes(),


//       // Si la ruta seleccionada no existe
//       // Lleva a página de alerta
//       // onGenerateRoute: (RouteSettings settings) {
//       //   return MaterialPageRoute(
//       //     builder: (BuildContext context) => AlertPage());
//       // },



//     );

//   }



// }

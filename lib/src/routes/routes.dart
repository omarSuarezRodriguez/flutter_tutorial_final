import 'package:flutter/material.dart';

import 'package:flutter_tutorial_final/src/basics_screen/basics_page.dart';

// import 'package:app_tienda_virtual/src/pages/carrito_page.dart';
// import 'package:app_tienda_virtual/src/pages/perfil_page.dart';
// import 'package:app_tienda_virtual/src/pages/upload_article_page.dart';

// import 'package:app_tienda_virtual/src/pages/tienda_page_dos.dart';



Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {

    // '/homePage'                  : (BuildContext context) => HomePage(),
    '/basics'         : (BuildContext context) => const BasicsPage(), 
    // '/carritoPage'        : (BuildContext context) => CarritoPage(),
    // '/perfilPage'         : (BuildContext context) => PerfilPage(),
    // '/uploadArticlePage'  : (BuildContext context) => UploadArticlePage(),
    // '/tiendaPageDos'      : (BuildContext context) => TiendaPageDos(),

  };

}
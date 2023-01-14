// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class BasicsPage extends StatelessWidget {
  const BasicsPage({super.key, required bool showNavBottomBar});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_01');
            },
            child: const ListTile(
              title: Text('01. Animated Builder'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_02');
            },
            child: const ListTile(
              title: Text('02. Page Route Builder'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_03');
            },
            child: const ListTile(
              title: Text('03. Animation Controller'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_04');
            },
            child: const ListTile(
              title: Text('04. Tweens'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_05');
            },
            child: const ListTile(
              title: Text('05. Animated Container'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_06');
            },
            child: const ListTile(
              title: Text('06. Custom Tween'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),





        ],
        
      ),
    );
  }
}

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({
    super.key,
    required this.name,
    required this.style,
  });

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name, style: style),
    );
  }
}

// Copyright 2019-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'data_transfer_page.dart';
import 'infinite_process_page.dart';
import 'performance_page.dart';



const double windowWidth = 1024;
const double windowHeight = 800;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Isolate Example');
    setWindowMinSize(const Size(windowWidth, windowHeight));
  }
}

class IsolateApp extends StatelessWidget {
  const IsolateApp({super.key});
  static String routeName = 'misc/isolate_app';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.flash_on),
                  text: 'Performance',
                ),
                Tab(
                  icon: Icon(Icons.sync),
                  text: 'Infinite Process',
                ),
                Tab(
                  icon: Icon(Icons.storage),
                  text: 'Data Transfer',
                ),
              ],
            ),
            title: const Text('Isolate Example'),
          ),
          body: const TabBarView(
            children: [
              PerformancePage(),
              InfiniteProcessPageStarter(),
              DataTransferPageStarter(),
            ],
          ),
        ),
      ),
    );
  }
}

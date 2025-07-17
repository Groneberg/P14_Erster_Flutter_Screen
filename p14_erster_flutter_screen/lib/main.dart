import 'package:flutter/material.dart';
import 'package:p14_erster_flutter_screen/widgets/title_bar.dart';
import 'package:p14_erster_flutter_screen/widgets/custom_search_bar.dart';
import 'package:p14_erster_flutter_screen/widgets/list_element.dart';
import 'package:p14_erster_flutter_screen/widgets/button_create_box.dart';
import 'package:p14_erster_flutter_screen/widgets/custom_bottem_nav_bar.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            TiTleBar(title: "Home", setBackIcon: false),
            CustomSearchBar(),
            ListElement(),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [ButtonCreateBox()],
              ),
            ),
            SizedBox(height: 90),
            CustomBottemNavBar(),
            SizedBox(height: MediaQuery.of(context).padding.bottom),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:p14_erster_flutter_screen/widgets/title_bar.dart';
import 'package:p14_erster_flutter_screen/widgets/custom_search_bar.dart';
import 'package:p14_erster_flutter_screen/widgets/custom_bottem_nav_bar.dart';
import 'package:p14_erster_flutter_screen/widgets/element_description.dart';


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
        backgroundColor: const Color(0xFFFAFAFA),
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            TiTleBar(title: "Home", setBackIcon: false),
            CustomSearchBar(),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,  
                children: [
                ElementDescription(description: "efficitur. ex id Sed consectetur tincidunt cursus odio hendrerit amet, cursus ullamcorper faucibus fringilla leo."),
                ],
              ),
            ),

            CustomBottemNavBar(),
            SizedBox(height: MediaQuery.of(context).padding.bottom),
          ],
        ),
      ),
    );
  }
}

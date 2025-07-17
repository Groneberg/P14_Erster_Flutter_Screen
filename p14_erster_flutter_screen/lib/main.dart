import 'package:flutter/material.dart';

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
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            TiTleBar(title: "Home", setBackIcon: false),
            SearchBar(),
            ListElement(),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [ButtonCreateBox()],
              ),
            ),
            SizedBox(height: 90),
            BottemNavBar(),
            SizedBox(height: MediaQuery.of(context).padding.bottom),
          ],
        ),
      ),
    );
  }
}

class TiTleBar extends StatelessWidget {
  final String title;
  final bool setBackIcon;
  // Icom icon;

  const TiTleBar({
    super.key,
    this.title = "Default Title",
    this.setBackIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF3A4801), Color(0xFF7D9200)],
          stops: [0.0, 1.0],
        ),
        border: Border.all(
          color: Color(0xFF3A4801),
          width: 1.0, // 1px
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color(0xFFFAFAFA),
        //     offset: Offset(0, 0),
        //     blurRadius: 10.0,
        //     spreadRadius: 0.0,
        //   )
        // ],
      ),
      child: Row(
        spacing: 32,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // TODO true => setBackIcon
          if (setBackIcon) Icon(Icons.arrow_back_ios_new, color: Colors.white),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.right,
              style: TextStyle(
                // TODO Font einbinden
                fontFamily: 'Roboto',
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFAFAFA),
              ),
            ),
          ),
          Icon(
            // TODO Icon einbinden SVG
            Icons.home,
            size: 32,
            color: Color(0xFFFAFAFA),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFF1D5AE), Color(0xFFDBB77F), Color(0xFFDFB983)],
          stops: [0.0, 0.5564, 1.0],
        ),
        border: Border.all(
          color: Color(0xFF3A4801),
          width: 1.0, // 1px
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color(0xFFFAFAFA),
        //     offset: Offset(0, 0),
        //     blurRadius: 10.0,
        //     spreadRadius: 0.0,
        //   ),
        // ],
      ),
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            // TODO wert aus TextField speichern
            child: TextField(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF4E0F19),
              ),
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          ),
          Container(width: 5, color: Color(0xFF000000)),
          Icon(Icons.search, color: Color(0xFF4E0F19), size: 24),
        ],
      ),
    );
  }
}

class ListElement extends StatefulWidget {
  // Box box;
  // Item item;
  // Event event;
  const ListElement({super.key});

  @override
  State<ListElement> createState() => _ListElementState();
}

class _ListElementState extends State<ListElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF3A4801),
          width: 1.0, // 1px
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(
                Icons.check_box_outline_blank,
                color: Color(0xFF4E0F19),
                size: 32,
              ),
              SizedBox(width: 16),
              // widget.box.name
              Expanded(
                child: Text(
                  "Garden",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4E0F19),
                  ),
                ),
              ),
              SizedBox(
                width: 72,
                child: Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.edit, color: Color(0xFF4E0F19), size: 24),
                    // SizedBox(width: 16,),
                    Icon(Icons.delete, color: Color(0xFF4E0F19), size: 24),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 60,
                child: Text(
                  "Items",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4E0F19),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                child: Text(
                  //
                  "0",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4E0F19),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                child: Text(
                  "Events",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4E0F19),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                child: Text(
                  "0",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4E0F19),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonCreateBox extends StatefulWidget {
  const ButtonCreateBox({super.key});

  @override
  State<ButtonCreateBox> createState() => _ButtonCreateBoxState();
}

class _ButtonCreateBoxState extends State<ButtonCreateBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF3A4801),
          width: 1.0, // 1px
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFF1D5AE), Color(0xFFDBB77F), Color(0xFFDFB983)],
          stops: [0.0, 0.5564, 1.0],
        ),
      ),
      child: Center(
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF3A4801),
              width: 2.0, // 1px
            ),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFF1D5AE), Color(0xFFDBB77F), Color(0xFFDFB983)],
              stops: [0.0, 0.5564, 1.0],
            ),
          ),
          child: Icon(Icons.add, color: Color(0xFF4E0F19), size: 36),
        ),
      ),
    );
  }
}

class BottemNavBar extends StatefulWidget {
  const BottemNavBar({super.key});

  @override
  State<BottemNavBar> createState() => _BottemNavBarState();
}

class _BottemNavBarState extends State<BottemNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF3A4801),
          width: 1.0, // 1px
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFF1D5AE), Color(0xFFDBB77F), Color(0xFFDFB983)],
          stops: [0.0, 0.5564, 1.0],
        ),
      ),
      child: Row(
        spacing: 16,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home, color: Color(0xFF4E0F19), size: 32),
          Container(
            width: 16,
            height: 64,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF3A4801), Color(0xFF7D9200)],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Expanded(child: Container()),
          Container(
            width: 16,
            height: 64,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF3A4801),Color(0xFF7D9200)],
                stops: [0.0, 1.0],
              ),
            ),
          ),
 

          // TODO vielleicht eigees svg für menu
          Icon(Icons.menu, color: Color(0xFF4E0F19), size: 32),
        ],
      ),
    );
  }
}

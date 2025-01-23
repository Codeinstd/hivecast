import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hivecast/classes/style.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  List<String> tabs = [
    "Design",
    "Tech",
    "Investment",
    "Food",
  ];

  int current = 0;

  double changePositionedOfLine() {
    switch (current) {
      case 0:
        return 0;
      case 1:
        return 60;
      case 2:
        return 135;
      case 3:
        return 208;

      default:
        return 0;
    }
  }

  double changeContainerWidth() {
    switch (current) {
      case 0:
        return 50;
      case 1:
        return 50;
      case 2:
        return 50;
      case 3:
        return 50;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
        backgroundColor: style.white,
        // appbar //
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // backgroundColor: style.white,
          toolbarHeight: 0,
        ),

        // bottomNavbar //
        bottomNavigationBar: Container(
          color: style.black,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: GNav(
              gap: 8,
              backgroundColor: style.black,
              color: style.divider,
              activeColor: style.black,
              tabBackgroundColor: style.white,
              tabMargin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Explore',
                ),
                GButton(
                  icon: Icons.library_add,
                  text: 'Library',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ],
            ),
          ),
        ),

        // body //
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 24),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // search bar //
                    Container(
                      height: 44,
                      width: 343,
                      decoration: BoxDecoration(
                        color: style.gray03,
                        border: Border.all(color: style.gray, width: 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      // margin: const EdgeInsets.all(0),
                      child: Row(
                        children: <Widget>[
                          const Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Icon(Icons.search)),
                          Expanded(
                            child: TextField(
                              cursorColor: style.gray01,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search by keywords, videos, etc",
                                hintStyle: TextStyle(color: style.gray04),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 10),
                              ),
                              style: GoogleFonts.outfit(
                                letterSpacing: -0.25,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: style.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),

                    DefaultTabController(
                        initialIndex: 1,
                        length: 4,
                        child: TabBar(controller: tabController, tabs: const [
                          // tab 1//
                          Tab(
                            text: 'Design',
                          ),
                          // tab 2 //
                          Tab(
                            text: 'Business',
                          ),
                          // tab 3 //
                          Tab(
                            text: 'Investment',
                          ),
                          // tab 4 //
                          Tab(
                            text: 'Food',
                          ),
                        ])),

                    const SizedBox(
                      height: 16,
                    ),

                    SizedBox(
                      height: 800,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          //1//
                          ListView(
                            children: [
                              // row 01 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Mockupd.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'How to mockup design',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/lennys.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Lenny\'s Corner',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/AE.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Learn after-effect',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/a-e.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Adobe After Effect',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // row 02 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/3D Design.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        '3D Digital Design',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/graphic_wallet.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Graphic Wallet',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Interior.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Interior Design 101',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/PHmedia.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'PH Media',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // row 03 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Accessibility.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Design Accessibility',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/IXDF.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'IXDF',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // color: style.black,
                                        child: Image.asset(
                                          'asset/Art-love.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'The Art Of Love 1',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/LC.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Love Corner',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //2//
                          ListView(
                            children: [
                              // row 01 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Mockupd.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'How to mockup design',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/lennys.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Lenny\'s Corner',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/AE.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Learn after-effect',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/a-e.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Adobe After Effect',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // row 02 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/3D Design.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        '3D Digital Design',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/graphic_wallet.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Graphic Wallet',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Interior.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Interior Design 101',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/PHmedia.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'PH Media',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // row 03 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Accessibility.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Design Accessibility',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/IXDF.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'IXDF',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // color: style.black,
                                        child: Image.asset(
                                          'asset/Art-love.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'The Art Of Love 1',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/LC.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Love Corner',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //3//
                          ListView(
                            children: [
                              // row 01 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Mockupd.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'How to mockup design',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/lennys.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Lenny\'s Corner',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/AE.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Learn after-effect',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/a-e.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Adobe After Effect',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // row 02 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/3D Design.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        '3D Digital Design',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/graphic_wallet.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Graphic Wallet',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Interior.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Interior Design 101',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/PHmedia.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'PH Media',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // row 03 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Accessibility.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Design Accessibility',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/IXDF.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'IXDF',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // color: style.black,
                                        child: Image.asset(
                                          'asset/Art-love.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'The Art Of Love 1',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/LC.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Love Corner',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //4//
                          ListView(
                            children: [
                              // row 01 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Mockupd.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'How to mockup design',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/lennys.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Lenny\'s Corner',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/AE.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Learn after-effect',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/a-e.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Adobe After Effect',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // row 02 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/3D Design.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        '3D Digital Design',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/graphic_wallet.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Graphic Wallet',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Interior.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Interior Design 101',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/PHmedia.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'PH Media',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // row 03 //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // column 01 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: style.black,
                                        child: Image.asset(
                                          'asset/Accessibility.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'Design Accessibility',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/IXDF.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'IXDF',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // line 2 //
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // color: style.black,
                                        child: Image.asset(
                                          'asset/Art-love.png',
                                          height: 103,
                                          width: 152,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // first line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '2 min watch',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Oct 16, 2024',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // big text //
                                      Text(
                                        'The Art Of Love 1',
                                        style: GoogleFonts.outfit(
                                          color: style.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      // last line //
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'asset/LC.png',
                                            height: 12,
                                            width: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          // text 2 //
                                          Text(
                                            'Love Corner',
                                            style: GoogleFonts.outfit(
                                              color: style.gray04,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              letterSpacing: -0.25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ))
        ]));
  }
}

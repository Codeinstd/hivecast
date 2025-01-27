import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hivecast/classes/style.dart';
import 'package:hivecast/screens/home.dart';
import 'package:hivecast/screens/settings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyLibrary extends StatefulWidget {
  const MyLibrary({super.key});

  @override
  State<MyLibrary> createState() => _MyLibraryState();
}

class _MyLibraryState extends State<MyLibrary>
    with SingleTickerProviderStateMixin {
  // Tab Item - Only Text
  // final List<Tab> _tabs = const [
  //   Tab(
  //     text: 'In Progress',
  //     height: 30,
  //   ),
  //   Tab(
  //     text: 'Recent Activity',
  //     height: 30,
  //   ),
  // ];
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            gap: 8,
            backgroundColor: style.black,
            color: style.divider,
            activeColor: style.black,
            tabBackgroundColor: style.white,
            tabMargin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Explore',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
              ),
              const GButton(
                icon: Icons.library_add,
                text: 'Library',
                // onPressed: () {
                //   Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => const MyLibrary()),
                //   );
                // },
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Settings()),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      // body //
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // tab content //

                  TabBar(
                    controller: tabController,
                    dividerColor: style.white,
                    tabs: const [
                      // tab 1//
                      Tab(
                        text: 'In-Progress',
                      ),
                      // tab 2 //
                      Tab(
                        text: 'Recent Activity',
                      ),
                    ],
                    labelColor: style.black,
                    indicatorColor: style.black,
                    unselectedLabelColor: style.black,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: style.gray03),
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  Expanded(
                    // height: 600,
                    // width: 375,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        // In-Progress //
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // text header //
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // text //
                                Text(
                                  'Today',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                // loader //
                                SmoothPageIndicator(
                                  controller: controller,
                                  count: 3,
                                  effect: ExpandingDotsEffect(
                                    spacing: 4,
                                    dotColor: style.black.withOpacity(0.1),
                                    activeDotColor: style.black,
                                    dotHeight: 6,
                                    dotWidth: 6,
                                  ),
                                  onDotClicked: (index) => controller
                                      .animateToPage(index,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeIn),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            // image carousel //
                            SizedBox(
                              height: 200,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                itemCount: 2,
                                itemBuilder:
                                    (BuildContext context, int index) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // 01 //
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
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    // 02 //
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
                                    const SizedBox(
                                      width: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // yesterday //
                            // text header //
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // text //
                                Text(
                                  'Yesterday',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                // loader //
                                SmoothPageIndicator(
                                  controller: controller,
                                  count: 3,
                                  effect: ExpandingDotsEffect(
                                    spacing: 4,
                                    dotColor: style.black.withOpacity(0.1),
                                    activeDotColor: style.black,
                                    dotHeight: 6,
                                    dotWidth: 6,
                                  ),
                                  onDotClicked: (index) => controller
                                      .animateToPage(index,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeIn),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            // image carousel //
                            SizedBox(
                              height: 200,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                itemCount: 2,
                                itemBuilder:
                                    (BuildContext context, int index) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // 01 //
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
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    // 02 //
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
                                    const SizedBox(
                                      width: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Recent Activity //
                        // Container(
                        //   child: ListView(
                        //     children: [
                        //       // text //
                        //       Row(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           // text //
                        //           Text(
                        //             'Today',
                        //             style: GoogleFonts.outfit(
                        //               color: style.black,
                        //               fontWeight: FontWeight.w400,
                        //               fontSize: 16,
                        //               letterSpacing: -0.25,
                        //             ),
                        //           ),
                        //           // loader //
                        //           SmoothPageIndicator(
                        //             controller: controller,
                        //             count: 3,
                        //             effect: ExpandingDotsEffect(
                        //               spacing: 4,
                        //               dotColor: style.black.withOpacity(0.1),
                        //               activeDotColor: style.black,
                        //               dotHeight: 6,
                        //               dotWidth: 6,
                        //             ),
                        //             onDotClicked: (index) =>
                        //                 controller.animateToPage(index,
                        //                     duration: const Duration(
                        //                         milliseconds: 500),
                        //                     curve: Curves.easeIn),
                        //           ),
                        //         ],
                        //       ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // text header //
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // text //
                                Text(
                                  'Today',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                // loader //
                                SmoothPageIndicator(
                                  controller: controller,
                                  count: 3,
                                  effect: ExpandingDotsEffect(
                                    spacing: 4,
                                    dotColor: style.black.withOpacity(0.1),
                                    activeDotColor: style.black,
                                    dotHeight: 6,
                                    dotWidth: 6,
                                  ),
                                  onDotClicked: (index) => controller
                                      .animateToPage(index,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeIn),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            // image carousel //
                            SizedBox(
                              height: 200,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                itemCount: 2,
                                itemBuilder:
                                    (BuildContext context, int index) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // 01 //
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
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    // 02 //
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
                                    const SizedBox(
                                      width: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // yesterday //
                            // text header //
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // text //
                                Text(
                                  'Yesterday',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                // loader //
                                SmoothPageIndicator(
                                  controller: controller,
                                  count: 3,
                                  effect: ExpandingDotsEffect(
                                    spacing: 4,
                                    dotColor: style.black.withOpacity(0.1),
                                    activeDotColor: style.black,
                                    dotHeight: 6,
                                    dotWidth: 6,
                                  ),
                                  onDotClicked: (index) => controller
                                      .animateToPage(index,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeIn),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            // image carousel //
                            SizedBox(
                              height: 200,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                itemCount: 2,
                                itemBuilder:
                                    (BuildContext context, int index) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // 01 //
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
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    // 02 //
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
                                    const SizedBox(
                                      width: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

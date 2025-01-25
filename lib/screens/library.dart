import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hivecast/classes/style.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 8),
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

                    SizedBox(
                      height: 600,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          //1//
                          Container(
                            child: ListView(
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
                                const SizedBox(
                                  height: 16,
                                ),

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
                                // const SizedBox(
                                //   height: 16,
                                // ),
                              ],
                            ),
                          ),

                          //1//
                          Container(
                            child: ListView(
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
                                const SizedBox(
                                  height: 16,
                                ),

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
                                // const SizedBox(
                                //   height: 16,
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

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
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Tab Item - Only Text
  final List<Tab> _tabs = const [
    Tab(
      text: 'In Progress',
    ),
    Tab(
      text: 'Recent Activity',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
              child: Column(children: [
                // tab content //

                TabBar(
                  controller: _tabController,
                  dividerColor: style.white,
                  tabs: _tabs,
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

                // body //
                Expanded(
                    child: TabBarView(controller: _tabController, children: [
                  Text(
                    'Today',
                    style: GoogleFonts.outfit(
                      color: style.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      letterSpacing: -0.25,
                    ),
                  ),
                  ListView.builder(
                    itemCount: 2,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // column 01 //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                        // line 2 //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                              mainAxisAlignment: MainAxisAlignment.start,
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
                ]))
              ]),
            ),
          )
        ],
      ),
    );
  }
}

// reusable widget //

class ReusableAppBodyWidget extends StatelessWidget {
  const ReusableAppBodyWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24, color: style.black),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
                fontSize: 18, color: style.gray05, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

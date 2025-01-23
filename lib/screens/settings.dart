import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hivecast/classes/style.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

List<String> options = ['Option 1', 'Option 2'];

class _SettingsState extends State<Settings> {
  String currentOption = options[0];
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.white,
      // appbar //
      appBar: AppBar(
        backgroundColor: style.white,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
          child: Text(
            'Settings',
            textAlign: TextAlign.left,
            style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.35,
              color: style.black,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        // backgroundColor: style.white,
        // toolbarHeight: 40,
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
              padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // stats //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // column //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // text //
                            Text(
                              'Stats',
                              style: GoogleFonts.outfit(
                                color: style.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                letterSpacing: -0.25,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Get insights on your learning habits',
                              style: GoogleFonts.outfit(
                                color: style.gray04,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        // icon //
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    // Language //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // column //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // text //
                            Text(
                              'Language',
                              style: GoogleFonts.outfit(
                                color: style.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                letterSpacing: -0.25,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Customise your language',
                              style: GoogleFonts.outfit(
                                color: style.gray04,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        // icon //
                        Row(
                          children: [
                            // text //
                            Row(
                              children: [
                                //image//
                                Image.asset(
                                  'asset/uk.png',
                                  height: 12,
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                // text //
                                Text(
                                  'English UK',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            // icon //
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 16,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    // Appearance //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // text //
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // text //
                            Text(
                              'Appearance',
                              style: GoogleFonts.outfit(
                                color: style.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                letterSpacing: -0.25,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Customize your theme and content legibility',
                              style: GoogleFonts.outfit(
                                color: style.gray04,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),

                        // mode //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // light mode //
                            Container(
                              child: Image.asset('asset/Light mode.png',
                                  height: 107, width: 150),

                              //         RadioListTile(
                              // controlAffinity: ListTileControlAffinity.leading,
                              // title: Text(
                              //   'Light theme',
                              //   style: GoogleFonts.outfit(
                              //     color: style.black,
                              //     fontWeight: FontWeight.w700,
                              //     fontSize: 12,
                              //     letterSpacing: -0.25,
                              //   ),
                              // ),
                              // value: options[0],
                              // groupValue: currentOption,
                              // onChanged: (value) {
                              //   setState(() {
                              //     currentOption = value.toString();
                              //   });
                              // }),
                            ),
                            // dark mode //
                            Image.asset('asset/dark mode.png',
                                height: 107, width: 150),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    // about //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // text //
                        Text(
                          'About',
                          style: GoogleFonts.outfit(
                            color: style.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: -0.25,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Know more about Hivecast v1.0',
                          style: GoogleFonts.outfit(
                            color: style.gray04,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            letterSpacing: -0.25,
                          ),
                        ),
                      ],
                    ),

                    // Container(
                    //   // color: style.gray06,
                    //   width: 170,
                    //   height: 107,
                    //   child: RadioListTile(
                    //       controlAffinity: ListTileControlAffinity.leading,
                    //       title: Text(
                    //         'Light theme',
                    //         style: GoogleFonts.outfit(
                    //           color: style.black,
                    //           fontWeight: FontWeight.w700,
                    //           fontSize: 12,
                    //           letterSpacing: -0.25,
                    //         ),
                    //       ),
                    //       value: options[0],
                    //       groupValue: currentOption,
                    //       onChanged: (value) {
                    //         setState(() {
                    //           currentOption = value.toString();
                    //         });
                    //       }),
                    // )

                    // // Checkbox(
                    // //     value: isChecked,
                    // //     onChanged: (value) {
                    // //       setState(() => isChecked = value!);
                    // //     })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

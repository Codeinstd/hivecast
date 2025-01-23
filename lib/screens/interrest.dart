import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:hivecast/classes/style.dart';

class Interrest extends StatefulWidget {
  const Interrest({super.key});

  @override
  State<Interrest> createState() => _InterrestState();
}

class _InterrestState extends State<Interrest> {
  List<String> imagePaths = [
    'asset/agriculture.png',
    'asset/business.png',
    'asset/dance.png',
    'asset/education.png',
    'asset/fashion.png',
    'asset/food.png',
    'asset/Investment.png',
    'asset/music.png',
    'asset/pets.png',
    'asset/sports.png',
    'asset/tech.png'
  ];

  HashSet selectItems = HashSet();
  bool isMultipleSelectionEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            // backgroundColor: style.white,
            toolbarHeight: 0,
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // close //
                          Container(
                            alignment: const Alignment(1, 0),
                            child: const Icon(
                              Icons.cancel_outlined,
                              color: style.gray01,
                              size: 28,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          // header //
                          const Text(
                            'Choose your interests',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              fontFamily: 'outfit',
                              letterSpacing: -0.85,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          // sub-text //
                          const Text(
                            'Lets personalize your content. You can change these settings at any time',
                            style: TextStyle(
                              color: style.text2,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              height: 1.5,
                              fontFamily: 'outfit',
                              letterSpacing: -0.45,
                            ),
                          ),
                          // const SizedBox(
                          //   height: 32,
                          // ),

                          GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 3,
                            mainAxisSpacing: 8,
                            childAspectRatio: 1.3,
                            children: imagePaths.map((String path) {
                              return getGridItem(path);
                            }).toList(),
                          )
                        ])))
          ])),
    );
  }

  String getSelectedItemCount() {
    return selectItems.isNotEmpty
        ? "${selectItems.length} item selected"
        : "No item selected";
  }

  void doMultiSelection(String path) {
    if (isMultipleSelectionEnabled) {
      setState(() {
        if (selectItems.contains(path)) {
          selectItems.remove(path);
        } else {
          selectItems.add(path);
        }
      });
    } else {
      //
    }
  }

  GridTile getGridItem(String path) {
    return GridTile(
        child: InkWell(
      onTap: () {
        doMultiSelection(path);
      },
      onLongPress: () {
        isMultipleSelectionEnabled = true;
        doMultiSelection(path);
      },
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Image.asset(
                path,
                color:
                    style.black.withOpacity(selectItems.contains(path) ? 1 : 0),
                colorBlendMode: BlendMode.color,
              )),
            ],
          ),
          Visibility(
            visible: selectItems.contains(path),
            child: const Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.check,
                color: style.white,
                size: 40,
              ),
            ),
          )
        ],
      ),
    ));
  }
}

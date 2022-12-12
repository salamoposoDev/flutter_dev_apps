import 'package:cloning_instagram/util/bubbles_highlight.dart';
import 'package:cloning_instagram/util/setting_menu.dart';
import 'package:cloning_instagram/util/tab_bar_person.dart';
import 'package:cloning_instagram/util/tab_bar_post.dart';
import 'package:cloning_instagram/util/tab_bar_reels.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  int selectedIndex = 0;
  void _navigateTab(int index) {
    selectedIndex = index;
  }

  final List textHighligh = [
    'Monday',
    'Alam',
    'Pantai',
    'Gunung',
    'Kampus',
  ];

  final List mySettings = [
    'Pengaturan',
    'Aktifitas anda',
    'Arsip',
    'Insight',
    'Kode QR',
    'Tersimpan',
    'Koleksi digital',
    'Teman dekat',
    'Favorit',
    'Temukan orang',
    'Pusat informasi COVID-19',
  ];
  final List itemSetting = [
    Icons.settings,
    Icons.history,
    Icons.save,
    Icons.insert_chart,
    Icons.qr_code,
    Icons.save,
    Icons.collections,
    Icons.people,
    Icons.favorite,
    Icons.find_in_page,
    Icons.coronavirus,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'salamoposo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  //ADD POST BUTTON
                  InkWell(
                    splashColor: Colors.grey,
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              // ignore: sort_child_properties_last
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Buat',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  // rells
                                  Container(
                                    // ignore: sort_child_properties_last
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const SizedBox(width: 10),
                                        const Icon(
                                          Icons.video_call,
                                          size: 30,
                                        ),
                                        const SizedBox(width: 10),
                                        const Text(
                                          'Reel',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    constraints:
                                        const BoxConstraints.tightForFinite(
                                      width: 400,
                                      height: 50,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),

                                  // Postingan
                                  Container(
                                    constraints:
                                        const BoxConstraints.tightForFinite(
                                      width: 400,
                                      height: 50,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.grid_4x4_outlined,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Postingan',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // SOROTAN CERITA
                                  Container(
                                    // ignore: sort_child_properties_last
                                    child: Row(
                                      children: const [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.add_a_photo_outlined,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Sorotan Cerita',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    constraints:
                                        const BoxConstraints.tightForFinite(
                                      width: 400,
                                      height: 50,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),

                                  // SIARAN LANGSUNG
                                  Container(
                                    constraints:
                                        const BoxConstraints.tightForFinite(
                                      width: 400,
                                      height: 50,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.live_tv_outlined,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Siaran Langsung',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // PANDUAN

                                  Container(
                                    constraints:
                                        const BoxConstraints.tightForFinite(
                                      width: 400,
                                      height: 50,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.bookmarks_outlined,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Panduan',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              height: 400,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            );
                          });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),

                  // MENU ICON
                  InkWell(
                    splashColor: Colors.grey,
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return Container(
                              height: 600,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 40),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: mySettings.length,
                                      itemBuilder: (context, index) {
                                        return MenuSetting(
                                            iconset: itemSetting[index],
                                            textSetting: mySettings[index]);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // PROOFILE POTO
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                ),

                // POST, FOLLOWERS, FOLLOWING
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      // postingan
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            '100',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('Postingan'),
                        ],
                      ),
                      // pengikut
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              '800',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text('Pengikut')
                          ],
                        ),
                      ),
                      // mengikuti
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            '900',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('Mengikuti'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // NAMA AKUN and Bio
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'salamoposo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('My Bio'),
                ],
              ),
            ),
            // DASHBOARD PROFESIONAL
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    splashColor: Colors.green,
                    child: Container(
                      // ignore: sort_child_properties_last
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Dashboard Profesional',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Fitur baru kini tersedia',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      width: 400,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                // EDIT PROFILE DAN BAGIKAN PROFILE
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Edit profile',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // ignore: sort_child_properties_last
                        child: const Center(
                          child: Text(
                            'new profile',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        height: 30,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                // HIGHLIGHT STORIES
                Container(
                  height: 120,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: textHighligh.length,
                      itemBuilder: (context, index) {
                        return HighlighsStory(
                          text: textHighligh[index],
                        );
                      }),
                ),

                const TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_4x4),
                    ),
                    Tab(
                      icon: Icon(Icons.video_call),
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                    ),
                  ],
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  TabBarPost(),
                  TabBarReels(),
                  TabBarPerson(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

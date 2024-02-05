import 'package:flutter/material.dart';
import 'package:glass_morphism/song_detail_screen.dart';
import 'package:glass_morphism/widgets/glassmorpic_container.dart';

class GlassmorphicHomeScreen extends StatefulWidget {
  const GlassmorphicHomeScreen({super.key});

  @override
  State<GlassmorphicHomeScreen> createState() => _GlassmorphicHomeScreenState();
}

class _GlassmorphicHomeScreenState extends State<GlassmorphicHomeScreen> {
  List<Map<String, dynamic>> collections = [
    {
      'image': 'boy.jpg',
      'title': "Chillout",
      'songs': 120,
    },
    {
      'image': 'calm.jpg',
      'title': "Nature",
      'songs': 150,
    },
    {
      'image': 'cal.jpg',
      'title': "Calm",
      'songs': 200,
    },
    {
      'image': 'dark.jpg',
      'title': "Dark",
      'songs': 88,
    }
  ];
  List<Map<String, dynamic>> songs = [
    {
      'name': 'Tum jo mil ja',
      'singer': "Sajjad Ali",
    },
    {
      'name': 'Ed sheeran',
      'singer': "Nusrat Fatah",
    },
    {
      'name': 'yar mil gaye',
      'singer': "Rahat Fatah",
    },
    {
      'name': 'Tum jo mil ja',
      'singer': "Nadeem khan",
    },
    {
      'name': 'Tum jo mil ja',
      'singer': "Jawad Ali",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/cal.jpg"), fit: BoxFit.cover),
        ),
        child: CustomGlassmorpicContainer(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.search,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.dashboard,
                              size: 20,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "Collections",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 200,
                        width: size.width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: collections.length,
                          itemBuilder: (context, index) {
                            final collection = collections[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: CustomGlassmorpicContainer(
                                    height: 130,
                                    width: 130,
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/${collection['image']}"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  collection['title'],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "${collection['songs']} songs",
                                  style: const TextStyle(color: Colors.white54),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      const Text(
                        "Recommended",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: songs.length,
                          itemBuilder: (context, index) {
                            final song = songs[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: CustomGlassmorpicContainer(
                                width: size.width,
                                height: 75,
                                boderRadius: 10,
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SongDetails(
                                          song: song,
                                        ),
                                      ),
                                    );
                                  },
                                  title: Text(
                                    song['singer'],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    song['name'],
                                    style: const TextStyle(
                                      color: Colors.white60,
                                    ),
                                  ),
                                  trailing: const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 5,
                  right: 5,
                  child: CustomGlassmorpicContainer(
                    boderRadius: 15,
                    width: size.width,
                    height: 80,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 18,
                                    child: Icon(
                                      Icons.pause,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sajjad Ali",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Tum jo mil ja",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Icon(
                                    Icons.skip_previous,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Icon(
                                    Icons.skip_next,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

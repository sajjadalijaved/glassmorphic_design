import 'package:flutter/material.dart';
import 'widgets/glassmorpic_container.dart';

class SongDetails extends StatefulWidget {
  final song;
  const SongDetails({super.key, this.song});

  @override
  State<SongDetails> createState() => _SongDetailsState();
}

class _SongDetailsState extends State<SongDetails> {
  double _value = 0.2;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_back,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Text(
                          "Listen now",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.more_vert,
                            size: 20,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    CustomGlassmorpicContainer(
                      height: 220,
                      width: 220,
                      boderRadius: 35,
                      child: Center(
                        child: Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                image: AssetImage("assets/cal.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            widget.song['singer'],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Center(
                          child: Text(
                            widget.song['name'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: _value,
                      activeColor: Colors.red,
                      inactiveColor: Colors.white,
                      thumbColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          backgroundColor: Colors.red,
                          radius: 28,
                          child: Icon(
                            Icons.pause,
                            size: 25,
                            color: Colors.white,
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
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

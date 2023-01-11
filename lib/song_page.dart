// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:music_player_ui/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                // back and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: NeuBox(
                          child: Icon(
                            Icons.arrow_back_ios,
                          ),
                        )),
                    Text("P L A Y L I S T "),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: NeuBox(
                          child: Icon(
                            Icons.menu,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                // cover art, artist name, song name
                NeuBox(
                    child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/images/image.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The name of the artist",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Song name",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              )
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          )
                        ],
                      ),
                    )
                  ],
                )),
                SizedBox(
                  height: 25,
                ),

                // start time , shuffle , repeat button, end time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("4:20"),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                // linear progress bar
                NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                // previous song, pause play, skip
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                          child: NeuBox(
                        child: Icon(Icons.skip_previous),
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Expanded(
                            child: NeuBox(
                          child: Icon(Icons.play_arrow),
                        )),
                      ),
                      Expanded(
                          child: NeuBox(
                        child: Icon(Icons.skip_next),
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

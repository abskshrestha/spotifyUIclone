import 'package:flutter/material.dart';
import 'package:spotify_clone/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.1),
                    Colors.white.withOpacity(0),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Played',
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .fontStyle),
                        ),
                        Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(width: 10),
                            Icon(Icons.settings),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Best Mode",
                            image: AssetImage("assets/album7.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Mot6ivation Mix",
                            image: AssetImage("assets/album2.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top 50-Global",
                            image: AssetImage("assets/top50.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Power Gaming",
                            image: AssetImage("assets/album1.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top songs - Global",
                            image: AssetImage("assets/album9.jpg"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Good evening",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 16),

                          Row(
                            children: [
                              Container(
                                child: Row(
                                  
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  const AlbumCard({
    Key key,
    this.image,
    this.label,
  }) : super(key: key);

  @override
  final ImageProvider image;
  final String label;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: image, width: 120, height: 120),
        SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}

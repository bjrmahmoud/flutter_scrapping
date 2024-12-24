import 'package:flutter/material.dart';
import 'package:scarpping_test/Screens/TableScreen.dart';
import 'package:scarpping_test/Widgets/LeagueContainer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xff32a852), // Green
                const Color(0xffffffff), // White
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // Top navigation bar with Home icon
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.white),
                        onPressed: () {
                          // Navigate to HomeScreen (this will reset the screen)
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                        },
                      ),
                      Expanded(
                        child: Text(
                          'Competitions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 238, 238, 238),
                          ),
                        ),
                      ),
                      SizedBox(width: 48), // Placeholder to balance Home icon
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    children: [
                      GestureDetector(
                        child: LeagueContainer(image: 'assets/pl.png'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TableScreen(code: 'PL'),
                              ));
                        },
                      ),
                      GestureDetector(
                        child: LeagueContainer(image: 'assets/laliga.png'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TableScreen(code: 'PD'),
                              ));
                        },
                      ),
                      GestureDetector(
                        child: LeagueContainer(image: 'assets/bundesliga.png'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TableScreen(code: 'BL1'),
                              ));
                        },
                      ),
                      GestureDetector(
                        child: LeagueContainer(image: 'assets/seria.png'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TableScreen(code: 'SA'),
                              ));
                        },
                      ),
                      GestureDetector(
                        child: LeagueContainer(image: 'assets/ligue1.png'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TableScreen(code: 'FL1'),
                              ));
                        },
                      ),
                      GestureDetector(
                        child: LeagueContainer(image: 'assets/nos.png'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TableScreen(code: 'PPL'),
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:balangan_go/makanan.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('CLASS BLANGAN Clone'),
            backgroundColor: Colors.green[700],
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('Search button clicked');
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print('More button clicked');
                },
              ),
            ],
          ),
          body: Container(
            // margin: EdgeInsets.only(left: 10, top: 20),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.green[700],
                        size: 60,
                      ),
                      Icon(
                        Icons.gamepad,
                        color: Colors.red[700],
                        size: 60,
                      ),
                      Icon(
                        Icons.browse_gallery,
                        color: Colors.blue[700],
                        size: 60,
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.blue[700],
                        size: 60,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                  ),
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                  ),
                  height: 50,
                ),

                // FORM INPUT
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        labelText: 'Name',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        labelText: 'Email',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        labelText: 'Password',
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                        hintText: 'Enter your mony',
                        labelText: 'Money',
                        prefix: Icon(Icons.money),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          print('Button clicked');
                        },
                        child: Text('Submit'),
                      ),
                    ),
                  ]),
                ),

                //END INPUT
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('Floating button clicked');
            },
            child: Icon(Icons.message),
            backgroundColor: Colors.green[700],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green[700],
                  ),
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Menuju Makanan'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MakananPage()));
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    print('Item 2 clicked');
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt),
                label: 'Camera',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Status',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Calls',
              ),
            ],
            selectedItemColor: Colors.green[700],
          )),
    );
  }
}

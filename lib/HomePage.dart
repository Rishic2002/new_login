import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
              appBar: AppBar(
                  backgroundColor: Color.fromARGB(216, 3, 198, 247),
                  title: Text('WELCOME🤍'),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        text: 'SUMMARY',
                      ),
                      Tab(
                        text: 'RECORDINGS',
                      ),
                      Tab(
                        text: 'NOTICE BOARD',
                      ),
                      Tab(
                        text: 'ATTENDANCE',
                      ),
                      Tab(
                        text: 'STUDENTS',
                      ),
                    ],
                    isScrollable: true,
                  )),
              body: TabBarView(children: [
                GridView(
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0),
                  children: List.generate(5, (index) {
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: GridTile(
                          footer: Text(
                            'CLASS $index',
                            textAlign: TextAlign.center,
                          ),
                          header: Text(
                            'SUBJECT $index',
                            textAlign: TextAlign.center,
                          ),
                          child: Icon(Icons.access_alarm,
                              size: 40.0, color: Colors.white),
                        ),
                      ),
                      color: Color.fromARGB(216, 3, 198, 247),
                      margin: EdgeInsets.all(1.0),
                    );
                  }),
                ),
                GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(5, (index) {
                      return Container(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: GridTile(
                            footer: Text(
                              'CLASS $index',
                              textAlign: TextAlign.center,
                            ),
                            header: Text(
                              ' SUBJECT $index',
                              textAlign: TextAlign.center,
                            ),
                            child: Icon(Icons.access_alarm,
                                size: 40.0, color: Colors.white),
                          ),
                        ),
                        color: Color.fromARGB(216, 3, 198, 247),
                        margin: EdgeInsets.all(1.0),
                      );
                    })),
                GridView.builder(
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    //if (index < 50)
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: GridTile(
                          footer: Text(
                            'CLASS $index',
                            textAlign: TextAlign.center,
                          ),
                          header: Text(
                            'SUBJECT $index',
                            textAlign: TextAlign.center,
                          ),
                          child: Icon(Icons.access_alarm,
                              size: 40.0, color: Colors.white),
                        ),
                      ),
                      color: Color.fromARGB(216, 3, 198, 247),
                      margin: EdgeInsets.all(1.0),
                    );
                  },
                ),
                GridView.custom(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    childrenDelegate:
                        SliverChildListDelegate(List.generate(5, (index) {
                      return Container(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: GridTile(
                            footer: Text(
                              'CLASS $index',
                              textAlign: TextAlign.center,
                            ),
                            header: Text(
                              'SUBJECT $index',
                              textAlign: TextAlign.center,
                            ),
                            child: Icon(Icons.access_alarm,
                                size: 40.0, color: Colors.white),
                          ),
                        ),
                        color: Color.fromARGB(216, 3, 198, 247),
                        margin: EdgeInsets.all(1.0),
                      );
                    }))),
                GridView.extent(
                  maxCrossAxisExtent: 200.0,
                  children: List.generate(5, (index) {
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: GridTile(
                          footer: Text(
                            'CLASS $index',
                            textAlign: TextAlign.center,
                          ),
                          header: Text(
                            'SUBJECT $index',
                            textAlign: TextAlign.center,
                          ),
                          child: Icon(Icons.access_alarm,
                              size: 40.0, color: Colors.white),
                        ),
                      ),
                      color: Color.fromARGB(216, 3, 198, 247),
                      margin: EdgeInsets.all(1.0),
                    );
                  }),
                )
              ]))),
    );
  }
}

void main() {
  runApp(HomePage());
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pratapProvider.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<Detail> {
  @override
  void initState() {
    super.initState();
    context.read<ContextProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17082A),
      body: Center(child:
          Consumer<ContextProvider>(builder: (context, providerData, child) {
        return providerData.isLoading
            ? const CircularProgressIndicator()
            : Container(
                child: ListView(
                  children: [
                    Container(
                      child: Stack(children: [
                        Positioned(
                          child: Container(
                              height: 650,
                              child: Image.network(
                                providerData.apiData['Poster'],
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: double.infinity,
                              )),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.only(top: 30),
                            decoration: BoxDecoration(
                              color: Color(0xFF17082A),
                            ),
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width * 1,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(20.0),
                                      decoration: BoxDecoration(
                                          color: Color(0xFF210F37),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Image.asset(
                                        'assets/Vector 27.png',
                                        height: 35,
                                      )),
                                  Container(
                                      padding: EdgeInsets.all(20.0),
                                      decoration: BoxDecoration(
                                          color: Color(0xFF210F37),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Image.asset(
                                        'assets/Path-1.png',
                                        height: 35,
                                      )),
                                  Container(
                                      padding: EdgeInsets.all(20.0),
                                      decoration: BoxDecoration(
                                          color: Color(0xFF210F37),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Image.asset(
                                        'assets/Path.png',
                                        height: 35,
                                      )),
                                ]),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 250,
                      decoration: BoxDecoration(
                          color: const Color(0xFF210F37),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: Text(
                                  "⭐⭐⭐⭐",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Text(
                                "8.4",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: const Text(
                                  "Internet Movie \n Database",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 110,
                              ),
                              Text(
                                "8.4/10",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: const Text(
                                  "Rotten Tomatoes",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "94%",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: const Text(
                                  "Metacritic",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              const Text(
                                "78/100",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 250,
                      decoration: BoxDecoration(
                          color: Color(0xFF210F37),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: Image.asset(
                                  'assets/Group 357.png',
                                  height: 25,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                providerData.apiData['Year'],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: Image.asset(
                                  'assets/Vector.png',
                                  height: 25,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                providerData.apiData['Country'],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: Image.asset(
                                  'assets/Group 356.png',
                                  height: 25,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                providerData.apiData['Runtime'],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                child: Image.asset(
                                  'assets/Group 358.png',
                                  height: 25,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                providerData.apiData['Language'],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        margin: EdgeInsets.only(top: 30),
                        height: 650,
                        decoration: BoxDecoration(
                            color: Color(0xFF210F37),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                                child: Text(
                                  "Plot ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                              child: Text(
                                providerData.apiData['Plot'],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(25, 50, 0, 0),
                                child: Text(
                                  "Director",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              alignment: Alignment.center,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Flexible(
                                child: Text(
                                  providerData.apiData['Director'],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(25, 40, 0, 0),
                                child: Text(
                                  "Actors",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                alignment: Alignment.center,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  providerData.apiData['Actors'],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(25, 50, 0, 0),
                                child: Text(
                                  "WRITER",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                alignment: Alignment.center,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  providerData.apiData['Actors'],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              );
      })),
    );
  }
}

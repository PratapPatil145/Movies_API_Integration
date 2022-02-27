import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie__api/screen/detail.dart';
import 'package:provider/provider.dart';
import '../pratapProvider.dart';

class movies extends StatefulWidget {
  const movies({Key? key}) : super(key: key);

  @override
  _moviesState createState() => _moviesState();
}

class _moviesState extends State<movies> {
  @override
  void initState() {
    super.initState();
    context.read<ContextProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: (Colors.grey),
          title: const Text("MOVIES"),
        ),
        backgroundColor: const Color(0xFF17082A),
        body: Center(child:
            Consumer<ContextProvider>(builder: (context, ProviderData, child) {
          return ProviderData.isLoading
              ? const CircularProgressIndicator()
              : SafeArea(
                  child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, left: 16.0, right: 16.0),
                      child: FlatButton(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  ProviderData.apiData['Poster'],
                                ),
                                alignment: Alignment.center,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onPressed: () {
                          NewWindow(context);
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              ProviderData.apiData['Title'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          ProviderData.apiData['Runtime'],
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        leading: Image.asset(
                          'assets/Group 356.png',
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ));
        })));
  }

  void NewWindow(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Detail()));
  }
}

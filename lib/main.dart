import 'package:flutter/material.dart';
import 'package:movie__api/screen/movies.dart';
import 'pratapProvider.dart';
import 'package:provider/provider.dart';
void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ContextProvider()),
      ],
      child: const MaterialApp(
        title: "MOvie",
        home: movies(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

import 'package:file_download/PrintButton.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
String filePath = '';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text to File Downloader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextToFileDownloader(),
    );
  }
}

class TextToFileDownloader extends StatefulWidget {
  @override
  _TextToFileDownloaderState createState() => _TextToFileDownloaderState();
}

class _TextToFileDownloaderState extends State<TextToFileDownloader> {
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("sample download"),
        backgroundColor: Colors.transparent,),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[ 
       
        Center(child: PrintButton()),

        ],
      )
    );
  }
}
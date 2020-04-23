import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:covid19stats/index.dart';
import 'package:covid19stats/information_screen.dart';



class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
final HomePageIndex indexScreen = HomePageIndex();
final AllAboutCovid infoScreen = AllAboutCovid();
Widget _showPage = HomePageIndex();
Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return indexScreen;
        break;
      case 1:
        return indexScreen;
        break;
      case 2:
        return infoScreen;
        break;
      default:
        return indexScreen;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.transparent,
    color: Theme.of(context).primaryColor,
    items: <Widget>[
      Icon(Icons.list, size: 30, color: Theme.of(context).accentColor,),
      Icon(Icons.show_chart, size: 30, color: Theme.of(context).accentColor),
      Icon(Icons.info_outline, size: 30, color: Theme.of(context).accentColor),
    ],
    onTap: (index) {
      setState(() {
            _showPage = _pageChooser(index);
          });
    },
  ),
      // backgroundColor: Color(0xff232d37),
     
      body: Container(
        child: _showPage,
      ),
    );
  }
}

 


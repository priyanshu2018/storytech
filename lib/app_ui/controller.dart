import 'package:flutter/material.dart';
import 'file:///C:/android%20programs%202/storytech/lib/app_ui/home_page.dart';

class Controller extends StatefulWidget {
  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  int currentPageIndex=0;

  PageController _pageController;

  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(
        controller: _pageController,
        onPageChanged: (index){
          setState(() {
            currentPageIndex=index;
          });

        },
        children: <Widget>[
          HomePage(),

        ],

      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: currentPageIndex,
        selectedItemColor: Color(0XFF489bfd),
        unselectedItemColor: Color(0XFF6d7586),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 25,),
            title: Text("k")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work,size: 20),
              title: Text("k")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,size: 25),
              title: Text("k")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline,size: 20),
              title: Text("k")
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(backgroundImage: AssetImage("asset/images/profile.jpg"),
              radius: 12,
                ),
              title: Text("k")

          ),
        ],
        onTap: (int index)  {setState(() {
          currentPageIndex=index;
        }

        );
        _pageController.jumpToPage(index);},
      ),
    );
  }
}

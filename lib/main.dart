import 'package:flutter/material.dart';

// 내일은 상단바랑 햄버거 메뉴(drawer, 당겨오는 형식으로 만들기)

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

// DefaultTabController 사용한 하단바

/*
class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//debug 띠 안보이게 해줌
      title: 'chat used firebase',
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            // extendBodyBehindAppBar: false,
            // extendBodyBehindAppBar가 true면 body 영역이 화면 전체를 채움

            appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: Text('fire chat App'),
              centerTitle: true,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                )
              ],
            ),
            drawer: Drawer(

            ),

            body: TabBarView(
              children: [
                Text('홈 스크린'),
                Text('채팅 스크린'),
                Text('마이 스크린'),
              ],
            ),

            bottomNavigationBar: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'home',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'chat',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'my',
              )
            ]),
          )),
    );
  }
}
*/

// BottomNavigationBar 사용한 하단바


class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    int bottomTab = 0;
    List tabBody = [Text('page1'), Text('page2'), Text('page3')];

    return Scaffold(
        appBar: AppBar(
          title: Text('fire chat App'),
        ),
        body: Center(
          child: tabBody[bottomTab], // 페이지와 연결
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'my')
          ],
          onTap: _onItemTapped
        ));
  }
  void _onItemTapped(int index) {
    // state 갱신
    setState(() {
      int bottomTab = index; // index는 item 순서로 0, 1, 2로 구성
    });
  }
}


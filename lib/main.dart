import 'package:flutter/material.dart';

// 내일은 상단바랑 햄버거 메뉴(drawer, 당겨오는 형식으로 만들기)

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone',
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

// DefaultTabController 사용한 하단바
class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//debug 띠 안보이게 해줌
      title: 'chat used firebase',
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
          length: 3,
          child: Scaffold(

            appBar: AppBar(
              title: Text('fire chat App'),
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
                color: Colors.black,
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  color: Colors.black,
                )
              ],
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

// BottomNavigationBar 사용한 하단바

/*
class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    int screenIndex = 0;
    List<Widget> screenList = [Text('홈스크린'), Text('채팅 스크린'), Text('마이 스크린')];

    return Scaffold(
        appBar: AppBar(
          title: Text('fire chat App'),
        ),
        body: screenList[screenIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: screenIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'my')
          ],
          onTap: (value) {
            setState(() { //상태 갱신이 되지 않으면 동작을 하지 않음
              screenIndex = value;
            });
          },
        ));
  }
}
*/
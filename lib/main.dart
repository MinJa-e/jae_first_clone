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
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            // extendBodyBehindAppBar: false,
            // extendBodyBehindAppBar가 true면 body 영역이 화면 전체를 채움

            appBar: AppBar(
              title: Text(' '),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent.withOpacity(1),
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
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.yellow,
                ),
              ],
            ),

            bottomNavigationBar: bottomBar(),

          )),
    );
  }
}

class bottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent, //색상
      child: Container(
        height: 70,
        padding: EdgeInsets.only(bottom: 10, top: 5),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.black,
          indicatorWeight: 4,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black38,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.sort_by_alpha_rounded, size: 20),
              text: 'Vocab',
            ),
            Tab(
              icon: Icon(
                Icons.library_books,
                size: 20,
              ),
              text: 'Library',
            ),
            Tab(
              icon: Icon(
                Icons.person,
                size: 20,
              ),
              text: 'MyPage',
            )
          ],
        ),
      ),
    );
  }
}


// BottomNavigationBar 사용한 하단바

/*

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
*/


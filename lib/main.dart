import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  //지금부터 이 App이라는 클래스를 widget으로 만들 것이다.
  //그러려면 flutter SDK에 있는 3개의 core Widget중에 하나를 extend(상속) 받아야 함.
  /*
      1. StatelessWidget
      2. 
      3. 
     */
  //statelessWidget을 상속받자 App로 에러 위치가 옮겨져 bild method가 필요하다고 함.
  //이 때, build method를 구현하라는 것은 statelessWidget을 상속받기 위한 조건이다.
  //build method는 flutter가 실행될 때 build method가 return하는 내용을 화면에 띄워줄 것이다.
  @override
  Widget build(BuildContext context) {
    //material : 구글 디자인 시스템
    //ios보다 meterial 쪽의 가독성이 좋은 편이기 때문에
    //이번 강의 + 많은 교본에서 이 스타일로 진행하는 편이다.
    //cupertino : 애플 디자인 시스템
    // MaterialApp과 CupertinoApp중 어떤 스타일의
    // 디자인 family를 사용할지 골라서 return해준다.
    // 만약 커스텀 디자인 어플을 만들고 싶더라도
    // 우선 기본적인 root UI setting은 해줘야함.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 5,
          title: Text('Hello flutter!'),
        ),
        body: Center(
          heightFactor: 20.0,
          child: Text('Hello world!'),
        ),
        //class를 찍을 때 마다 ,(콤마)를 찍어주면 vsCode가 자동으로 아래처럼 class가 닫힌 부분을 표시해준다.
      ),
    );

    //scaffold : UI 화면의 기본 뼈대. 규칙에 의해 화면이 반드시 가져야하는 요소.
    //navegation bar, botton, tab, bar, 화면 중앙 정렬 등등...을 해준다.
  }
}

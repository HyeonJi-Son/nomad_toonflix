import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

const taxAmount = 15;
const priceAmount = 30;

var finalPrice = taxAmount + priceAmount;

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
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text('Welcome back',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 15,
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    )
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$5 194 482',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Button(
                          text: 'Transfer',
                          bgColor: Color(0xFFF1B33B),
                          textColor: Colors.black
                      ),
                      const Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Text('Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    )),
                    Text('View All',
                    style: TextStyle(
                      color:Colors.white.withOpacity(0.6),
                      fontSize: 18,
                    )),
                  ],),
                  const SizedBox(
                    height: 20,
                  ),
                  CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                  ),
                  Transform.translate(
                    offset: const Offset(0, -30),
                    child: const CurrencyCard(
                      name: 'Bitcoin',
                      code: 'BTC',
                      amount: '9 222',
                      icon: Icons.currency_bitcoin_rounded,
                      isInverted: true,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -60),
                    child: const CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '428',
                      icon: Icons.attach_money_rounded,
                      isInverted: false,
                    ),
                  ),
                ],
            ),
          ),
        ),
        //class를 찍을 때 마다 ,(콤마)를 찍어주면 vsCode가 자동으로 아래처럼 class가 닫힌 부분을 표시해준다.
      ),
    );

    //scaffold : UI 화면의 기본 뼈대. 규칙에 의해 화면이 반드시 가져야하는 요소.
    //navegation bar, botton, tab, bar, 화면 중앙 정렬 등등...을 해준다.
  }
}

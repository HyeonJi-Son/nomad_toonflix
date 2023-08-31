import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

@override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      //clipBehavior: Container가 담은 요소가 Container를 넘어갔을 때 어떻게 처리할지 지정.
      decoration: BoxDecoration(
        color: isInverted? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox( height: 10,),
                Row(
                  children: [
                    Text(amount,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(code,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white.withOpacity(0.6),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.5,
              child: Transform.translate(
                offset: Offset(-5, 13),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 88,
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
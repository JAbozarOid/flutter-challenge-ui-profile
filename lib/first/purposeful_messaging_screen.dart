import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile/first/match_cards.dart';

class PurposefulMessagingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('PurposefulMessaging'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 10,
              child: Card(
                elevation: 4,
                color: Color.fromARGB(255, 0, 0, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 200,
                  height: 300,
                ),
              ),
            ),
            Positioned(
              top: 20,
              child: Card(
                elevation: 8,
                color: Color.fromARGB(255, 0, 255, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 220,
                  height: 300,
                ),
              ),
            ),
            Positioned(
              top: 30,
              child: Draggable(
                childWhenDragging: Container(),
                feedback: Card(
                  elevation: 12,
                  color: Color.fromARGB(255, 200, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 240,
                    height: 300,
                  ),
                ),
                child: Card(
                  elevation: 12,
                  color: Color.fromARGB(255, 200, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 240,
                    height: 300,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _getMatchCards() {
    List<MatchCards> cards = <MatchCards>[];
    cards.add(MatchCards(255, 0, 0, 10));
    cards.add(MatchCards(0, 255, 0, 20));
    cards.add(MatchCards(0, 0, 255, 30));

    List<Widget> cardList = [];
    for (int x = 0; x < 3; x++) {
      cardList.add(Positioned(
        top: 30,
        child: Draggable(
          childWhenDragging: Container(),
          feedback: Card(
            elevation: 12,
            color: Color.fromARGB(255, cards[x].redColor, cards[x].greenColor,
                cards[x].blueColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 240,
              height: 300,
            ),
          ),
          child: Card(
            elevation: 12,
            color: Color.fromARGB(255, cards[x].redColor, cards[x].greenColor,
                cards[x].blueColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 240,
              height: 300,
            ),
          ),
        ),
      ));
    }
  }
}

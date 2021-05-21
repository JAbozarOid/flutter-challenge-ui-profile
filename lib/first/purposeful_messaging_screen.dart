import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile/common/gradient_appbar.dart';
import 'package:profile/first/match_cards.dart';

class PurposefulMessagingScreen extends StatefulWidget {
  @override
  _PurposefulMessagingScreenState createState() =>
      _PurposefulMessagingScreenState();
}

class _PurposefulMessagingScreenState extends State<PurposefulMessagingScreen> {
  List<Widget> cardList;

  void _removeCard(index) {
    setState(() {
      cardList.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    cardList = _getMatchCards();
  }

  @override
  Widget build(BuildContext context) {
    print("the width is ${MediaQuery.of(context).size.width}");
    print("the height is ${MediaQuery.of(context).size.height}");
    return Scaffold(
      body: Stack(
        children: [
          GradientAppBar('Purposeful Messaging'),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Stack(alignment: Alignment.center, children: cardList),
          ),
        ],
      ),
    );
  }

  List<Widget> _getMatchCards() {
    List<MatchCards> cards = <MatchCards>[];
    cards.add(MatchCards('assets/abozar3.png', 310, 520, 30));
    cards.add(MatchCards('assets/abozar2.jpg', 330, 510, 20));
    cards.add(MatchCards('assets/abozar1.png', 350, 500, 10));

    List<Widget> cardList = [];
    for (int x = 0; x < 3; x++) {
      cardList.add(
        Positioned(
          top: cards[x].margin,
          child: Draggable(
            onDragEnd: (drag) {
              _removeCard(x);
            },
            childWhenDragging: Container(),
            feedback: SizedBox(
              width: cards[x].width,
              height: cards[x].height,
              child: Card(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: cards[x].width,
                    height: cards[x].height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: Image.asset(
                              cards[x].imgStr,
                              width: cards[x].width,
                              height: cards[x].height,
                            ).image,
                            fit: BoxFit.cover)),
                  )),
            ),
            child: SizedBox(
              width: cards[x].width,
              height: cards[x].height,
              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: cards[x].width,
                  height: cards[x].height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: Image.asset(cards[x].imgStr,
                                  width: cards[x].width,
                                  height: cards[x].height)
                              .image,
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return cardList;
  }
}

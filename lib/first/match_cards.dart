class MatchCards {
  //int redColor = 0;
  //int greenColor = 0;
  //int blueColor = 0;
  String imgStr;
  double width;
  double height;
  double margin = 0;

  MatchCards(String imgUrl, double x, double y, double marginTop) {
    //this.redColor = red;
    //this.greenColor = greenColor;
    //this.blueColor = blueColor;
    this.imgStr = imgUrl;
    this.width = x;
    this.height = y;
    this.margin = marginTop;
  }
}

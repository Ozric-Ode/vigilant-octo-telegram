import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double cwidth = MediaQuery.of(context).size.width;
    double cheight = MediaQuery.of(context).size.height;
    String nameEntered = "Monik";
    final List<String> financialWays = [
      "Banking",
      "Stock market",
      "Loans",
      "Taxing",
      "Insurance"
    ];
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(40.0),
        child: Container(
          width: cwidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome ",
                style: GoogleFonts.montserrat(
                  color: Color(0xff602080),
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height: cheight * (66 / 1045),
              ),
              Container(
                height: cheight * (540 / 1045),
                width: cwidth * (1140 / 1440),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black38,
                ),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          "Welcome ${nameEntered} to financegame here you will be taught how to manage your personal finance and investments. ",
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.headline4,
                            color: Color(0xFFF2F2F2),
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                            //letterSpacing: -5,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: cheight * (40 / 1045),
                      // ),
                      Text(
                        "Lets begin our finantic journey.",
                        style: GoogleFonts.openSans(
                          textStyle: Theme.of(context).textTheme.headline4,
                          color: Color(0xFFF2F2F2),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          //letterSpacing: -5,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "Hey ${nameEntered}, you have just passed out with a degree of computer science and engineering, and you have a job of Rs. 30000",
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.headline4,
                            color: Color(0xFFF2F2F2),
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                            //letterSpacing: -5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: cheight * (66 / 1045),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.all(8),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3.5,
                    crossAxisCount: 5,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: 5,
                  itemBuilder: (ctx, index) {
                    return RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      onPressed: () {},
                      color: Color(0xffC4C4C4),
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          financialWays[index],
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.headline4,
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
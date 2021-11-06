import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:koko_garden/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 32, 0, 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage("images/image1.png"),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Image(
                            image: AssetImage("images/image2.png"),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage("images/image3.png"),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Koko Garden",
              style: headerTextStyle.copyWith(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Buat taman kecil anda sendiri dirumah",
              style: bodyTextStyle.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 52, 24, 0),
              width: MediaQuery.of(context).size.width -
                  (2 * defaultMargin), // membuat buttonnya responsive
              height: 50,
              child: ElevatedButton(
                  child: Text("Mulai",
                      style: buttonPrimaryTextStyle.copyWith(fontSize: 14)),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(whiteColor),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(greenColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  onPressed: () => null),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum punya akun? ",
                  style: bodyTextStyle.copyWith(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                    child: Text("Daftar Sekarang",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: greenColor,
                            fontSize: 14)),
                    onTap: () {
                      // do what you need to do when "Click here" gets clicked
                    })
              ],
            ),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}

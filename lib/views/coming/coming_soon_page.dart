import 'package:flutter/material.dart';

class ComingSoonPage extends StatefulWidget {
  ComingSoonPage(this.icon, {Key key}) : super(key: key);

  final IconData icon;

  @override
  _ComingSoonPageState createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(widget.icon, color: Colors.black26, size: 96),
            Padding(padding: EdgeInsets.only(bottom: 36)),
            Text('នឹងមានឆាបៗ!នេះ',
                style: Theme.of(context).textTheme.subtitle1),
            Padding(padding: EdgeInsets.only(bottom: 8)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 64),
              child: Text(
                  "ពួកយើងកំពុងព្យាយាមធ្វើការលើមុខងារថ្មី. សូមឧស្សាហ៍ពិនិត្យ!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .apply(color: Colors.black54)),
            ),
          ],
        ),
      ),
    );
  }
}

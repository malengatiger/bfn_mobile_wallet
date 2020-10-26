import 'package:bfnlibrary/ui/signin/signin.dart';
import 'package:bfnlibrary/ui/wallet/wallet_dashboard.dart';
import 'package:bfnlibrary/util/fb_util.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'BFN Wallet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  initState() {
    super.initState();
    _checkUserLoggedIn();
  }

  void _checkUserLoggedIn() async {
    await FireBaseUtil.initialize();
    var isLoggedIn = await FireBaseUtil.isUserLoggedIn();
    if (isLoggedIn) {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.topLeft,
          duration: Duration(seconds: 1),
          child: WalletDashboard(),
        ),
      );
    } else {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.scale,
          alignment: Alignment.topLeft,
          duration: Duration(seconds: 1),
          child: Signin(),
        ),
      );
    }
  }

  // Future<void> _ping() async {
  //   var isLoggedIn = await FireBaseUtil.isUserLoggedIn();
  //   await StellarUtility.ping();
  //   p('$PINK_FLOWER $PINK_FLOWER _MyHomePageState: .... '
  //       'has returned from ping; $FERN logged in: $isLoggedIn ........');
  //   Net.ping();
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
    );
  }
}

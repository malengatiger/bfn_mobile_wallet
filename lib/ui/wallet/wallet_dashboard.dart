import 'package:flutter/material.dart';
import 'package:mobilewallet/ui/wallet/dashboard_desktop.dart';
import 'package:mobilewallet/ui/wallet/dashboard_mobile.dart';
import 'package:mobilewallet/ui/wallet/dashboard_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WalletDashboard extends StatefulWidget {
  @override
  _WalletDashboardState createState() => _WalletDashboardState();
}

class _WalletDashboardState extends State<WalletDashboard>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DashboardMobile(),
      tablet: DashboardTablet(),
      desktop: DashboardDesktop(),
    );
  }
}

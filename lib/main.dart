import 'package:flutter/material.dart';
import 'package:flutter_my_chat/root_page.dart';
import 'package:flutter_my_chat/ui/theme.dart';

import 'util/auth.dart';
import 'util/state_widget.dart';

void main() {
  StateWidget stateWidget = new StateWidget(
    child: new MyApp(),
  );

  runApp(stateWidget);
}

class MyApp extends StatelessWidget {
  MyApp() {
    //Navigation.initPaths();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-TENDERING SYSTEM',
      theme: buildTheme(),
      //onGenerateRoute: Navigation.router.generator,
      debugShowCheckedModeBanner: false,
      home: RootPage(
        auth: Auth(),
      ),
      routes: <String, WidgetBuilder>{
        //controller
//        MyRoutes.VIEWCONTROLLER: (context) => ViewController(),
//        MyRoutes.SIGNIN: (context) => SignInScreen(),
//        MyRoutes.SIGNUP: (context) => SignUpScreen(),
//        MyRoutes.FORGOT_PASSWORD: (context) => ForgotPasswordScreen(),
//        MyRoutes.VIEW_EMPLOYEES: (context) => ViewEmployees(),
//        MyRoutes.VIEW_STOCK: (context) => ViewShopsStock(),
//        MyRoutes.VIEW_SHOPS: (context) => ViewShops(),
//        MyRoutes.VIEW_PRICES: (context) => ViewPrices(),
//        MyRoutes.VIEW_FRANCHISES: (context) => ViewFranchises(),
//        MyRoutes.VIEW_TARGETS: (context) => ViewTargets(),
//
//
//        //wholesale
//        MyRoutes.WHOLESALE_VIEW_SALES: (context) => WholesaleSellGas(),
//        MyRoutes.WHOLESALE_VIEW_FAULTS: (context) => WholesaleViewFaults(),
//
//
//
//        //frenchise
//        MyRoutes.VIEW_SELLERS: (context) => ViewSellers(),
//        MyRoutes.FRANCHISE_VIEW_MY_PRICES: (context) => ViewMyPrices(),
//        MyRoutes.FRANCHISE_VIEW_FAULTS: (context) => ViewFaults(),
//
//
//
//        //frenchise cage sales person
//        MyRoutes.SALES_FRENCHISE_FAULTS: (context) => FranchiseCageViewFaults(),
//
//
//
//
      },
    );
  }
}

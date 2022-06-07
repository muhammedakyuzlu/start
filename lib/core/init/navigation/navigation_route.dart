// import 'package:all_of_template/features/buy_view.dart';
// import 'package:architecture_widgets/src/card/not_found_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../product/exception/navigate_model_not_found.dart';
// import '../../../view/authenticate/onboard/view/on_board_view.dart';
// import '../../../view/authenticate/splash/view/splash_view.dart';
// import '../../../view/authenticate/test/view/test_view.dart';
import '../../../view/settings/model/settings_dynamic.dart';
import '../../../view/settings/view/subview/settings_dynamic_view.dart';
import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(SplashView(), NavigationConstants.DEFAULT);

      case NavigationConstants.TEST_VIEW:
        return normalNavigate(TestsView(), NavigationConstants.TEST_VIEW);

      case NavigationConstants.BUY_VIEW:
        return normalNavigate(BuyView(), NavigationConstants.BUY_VIEW);

      case NavigationConstants.ON_BOARD:
        return normalNavigate(OnBoardView(), NavigationConstants.ON_BOARD);

      case NavigationConstants.SETTINGS_WEB_VIEW:
        if (args.arguments is SettingsDynamicModel) {
          return normalNavigate(
            SettingsDynamicView(model: args.arguments as SettingsDynamicModel),
            NavigationConstants.SETTINGS_WEB_VIEW,
          );
        }
        throw NavigateException<SettingsDynamicModel>(args.arguments);

      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
        builder: (context) => widget,
        //analytciste görülecek olan sayfa ismi için pageName veriyoruz
        settings: RouteSettings(name: pageName));
  }
}

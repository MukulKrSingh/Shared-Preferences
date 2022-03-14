// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

class Routes {
  var LOGIN_VIEW_ROUTE = '/Login_View';
  var HOME_VIEW_ROUTE = '/Home_View';
  var INITIAL_ROUTE;

  changeInitialRoute(bool flag) {
    if (flag) {
      INITIAL_ROUTE = '/Home_View';
    } else {
      INITIAL_ROUTE = '/Login_View';
    }

    return 0;
  }
}

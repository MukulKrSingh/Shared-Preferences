// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

class Routes {
  var LOGIN_VIEW_ROUTE = '/Login_View';
  var HOME_VIEW_ROUTE = '/Home_View';
  var INITIAL_ROUTE = '/Login_View';

  changeInitialRoute(bool flag) {
    //asdad
    //print('Inside change initial route');
    if (flag) {
      INITIAL_ROUTE = '/Home_View';
      //print(INITIAL_ROUTE);
    } else {
      INITIAL_ROUTE = '/Login_View';
    }


    //print(INITIAL_ROUTE);
    return 0;
  }
}

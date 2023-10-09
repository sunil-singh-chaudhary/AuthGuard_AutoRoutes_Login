import 'package:auto_route/auto_route.dart';
import 'package:doctorx_flutter/routes/AutoRoutes.gr.dart';
import 'package:doctorx_flutter/utils/sharedpreference.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    bool isloged = await SharedPreferencesUtils.getLoggedIn();
    if (isloged) {
      resolver.next(true);
    } else {
      router.push(LoginRoutes(
        onResult: (islogin) {
          if (islogin) {
            resolver.next(true);
            router.removeLast();
          }
        },
      ));
    }
    //here you get the result for true or false
  }
}

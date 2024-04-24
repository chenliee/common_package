import 'package:flutter/material.dart';

class CustomModalRoute {
  static ModalRoute<dynamic>? of(BuildContext context) {
    ModalRoute<dynamic>? route;
    context.visitAncestorElements((element) {
      if (element.widget.runtimeType.toString() == '_ModalScopeStatus') {
        dynamic widget = element.widget;
        route = widget.route as ModalRoute;
        return false;
      }
      return true;
    });
    return route;
  }
}

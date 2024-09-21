library service_package;

export 'package:dio/dio.dart';

export 'api/api_gen.dart';
export 'env/env.dart';
export 'http/base_dio.dart';
export 'src/global.dart';
export 'utils/custom_navigator_observer.dart';
export 'utils/datetime_util.dart';
export 'utils/debug.dart';
export 'utils/location_util.dart';
export 'utils/num_util.dart';
export 'utils/strings.dart';
export 'utils/toast.dart';
export 'utils/upload.dart';
export 'widget/custom_modal_route.dart';
export 'widget/custom_tab_indicator.dart';
export 'widget/easy_refresh_widget.dart';

class ServiceWeb {
  static Future<void> openWebPage(String url, {String type = '_blank'}) async {}
}

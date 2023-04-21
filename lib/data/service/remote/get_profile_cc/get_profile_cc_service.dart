import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

class GetProfileRemoteServiceCC {
  Client client = Client();
  Future<Response> fetchGetProfileCC(AuthenticationHeaderRequest header) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_CC,
        BaseConfig.BASE_PATH_CC + BaseConfig.GET_PROFILE_CC);

    print(url);
    return client.get(
      url,
    );
  }
}

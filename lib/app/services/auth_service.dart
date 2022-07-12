import 'package:my_souq/app/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:my_souq/components/declarations.dart';

class AuthService {

  void signUpUser({required String email, required String password, required String name}) async {

    try {
      User user = User(id: '', name: name, password: password, address: '', type: '', token: '', email: email);

      http.Response res = await  http.post(
                                            Uri.parse('$myUri01/api/signup'),
                                            body: user.toJson(),
                                            headers: <String, String> {
                                              'Content-Type': 'application/json; charset=utf-8',
                                            }
                                        );
    } catch (err) {

    }
  }


}
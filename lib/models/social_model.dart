
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart' as kakao;
import 'package:pickar_app/models/firebase_auth_model.dart';
import 'package:pickar_app/social/social_auth.dart';

class SocialModel {
  final SocialAuth _socialLogin;
  bool isLogined = false;
  dynamic user;

  SocialModel(this._socialLogin);
  
  

  Future kakaoLogin() async {
    final _firebaseAuthModel = FirebaseAuthModel();
    isLogined = await _socialLogin.kakaoLogin();
    if (isLogined) {
      user = await kakao.UserApi.instance.me();
      
      final token = await _firebaseAuthModel.createCustomToken({
        'uid': user!.id.toString(),
        'displayName': user!.kakaoAccount!.profile!.nickname,
        'email': user!.kakaoAccount!.email!,
      });
      await FirebaseAuth.instance.signInWithCustomToken(token);
    }
  }

  Future googleLogin() async { 
    user = await _socialLogin.googleLogin();
    if (user != null) {
      final credential = GoogleAuthProvider.credential(
        accessToken: user?.accessToken,
        idToken: user?.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
    } 
  }

  Future logout() async {
    try {
      await _socialLogin.googleLogout();
      print('google logout complete');
      // await _socialLogin.kakaoLogout();
      print('kakao logout complete');
      await FirebaseAuth.instance.signOut();
      print('firebase logout complete');
    } catch (e) {
      print(e);;
    }
    isLogined = false;
    user = null;
  }
}
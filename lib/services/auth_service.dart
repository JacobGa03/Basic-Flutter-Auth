import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Support the different sign on methods
class AuthService {
  signInWithGoogle() async {
    // begin sign process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    // obtain auth details from the sign in attempt above
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    // create new credential for user
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);
    // sign the user in with code given from firebase
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

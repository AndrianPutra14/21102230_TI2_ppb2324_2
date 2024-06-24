import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  Future<void> login({required String email, required String password}) async {
    try {} on FirebaseException catch (e) {
      throw e.message ?? 'Something wrong!';
    } catch (e) {
      throw e;
    }
  }

  Future<void> register(
      {required String email, required String password}) async {
    try {} on FirebaseException catch (e) {
      throw e.message ?? 'Something wrong!';
    } catch (e) {
      throw e;
    }
  }
}

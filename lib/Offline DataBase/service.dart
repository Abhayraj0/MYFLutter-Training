
import 'package:login/Offline%20DataBase/Model/UserModel.dart';
import 'package:login/Offline%20DataBase/repos.dart';

class UserService {

  late UserRepo? _userRepo;

  UserService () {
    _userRepo = UserRepo();
  }

  inserUser(UserModelLO? userModelLO) async {
    return await _userRepo?.insertUser('Login', userModelLO!.UserMap());
  }

  readUser() async {
    return _userRepo?.getData("Login");
  }
}
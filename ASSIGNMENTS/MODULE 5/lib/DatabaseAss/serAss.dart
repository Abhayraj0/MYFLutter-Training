import 'package:mysqfliteassignment/DatabaseAss/Modle/sqlAs.dart';
import 'package:mysqfliteassignment/DatabaseAss/repoAss.dart';

class UserServiceAssignment {
  
  late RepoAssingnment? _repoAssingnment;

  UserServiceAssignment() {
    _repoAssingnment = RepoAssingnment();
  }

  saveData(UserModelAss? userModelAss) async {
    return await _repoAssingnment!.insertData('myTable', userModelAss!.UserMapAss());
  }
  displayData() async{
    return await _repoAssingnment!.getData("myTable");
  }

  updateUser(UserModelAss? userModelAss) async {
    return await _repoAssingnment!.updateData("myTable", userModelAss!.UserMapAss());
  }

  deleteUser(UserModelAss? userModelAss) async {
    return await _repoAssingnment!.deleteData("myTable", userModelAss!.UserMapAss());
  }

  searchUser(String? name) async {
    return await _repoAssingnment!.searchData("myTable",name);
  }

}
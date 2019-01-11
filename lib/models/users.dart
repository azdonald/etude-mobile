
class User{
  String firstname;
  String lastname;
  String email;
  String password;
  int id;
  int publicId;

  Map toJson(){
    Map userMap = new Map();
    userMap['firstname'] = firstname;
    userMap['lastname'] = lastname;
    userMap['email'] = email;
    userMap['password'] = password;
    userMap['user_type'] = 1;

    return userMap;
  }


}


class UserProfile{

}
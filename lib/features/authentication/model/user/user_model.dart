// -- Create model User

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String password;
  final String phoneNo;

  const UserModel(
      {this.id,
      required this.phoneNo,
      required this.fullName,
      required this.password,
      required this.email});
  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password
    };
  }
}

class User {
  final String? id;
  final String name;
  final int age;
  final String email;
  final String password;

  User({
    this.id, 
    required this.name,
    required this.age,
    required this.email,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'], 
      name: json['name'] ?? '',
      age: json['age'] ?? 0,
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) '_id': id,
      'name': name,
      'age': age,
      'email': email,
      'password': password,
    };
  }
}

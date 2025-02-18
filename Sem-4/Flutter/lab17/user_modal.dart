import './string_const.dart';

class UserModel {
  static List<Map<String, dynamic>> userList = [
    {
      NAME: 'Prof. Mehul Bhundiya',
      EMAIL: 'mehul@du.ac.in',
      PASSWORD: 'Mehul@123',
      MOBILE: '9428231065',
      DOB: '1-12-2000',
      AGE: '25',
      CITY: 'Rajkot',
      GENDER: 'male',
      ISFAVORITE: true,
      PRIOR: 1,
    },
    {
      NAME: 'Dhaval',
      EMAIL: 'dhaval123@gmail.com',
      PASSWORD: 'Dhvl@123',
      MOBILE: '1234567890',
      DOB: '1-12-2005',
      AGE: '20',
      CITY: 'Ahemdabad',
      GENDER: 'male',
      ISFAVORITE: true,
      PRIOR: 2,
    },
    {
      NAME: "Aditi",
      EMAIL: "aditi456@gmail.com",
      PASSWORD: "Aditi@456",
      MOBILE: "9876543210",
      DOB: "5-06-1998",
      AGE: "27",
      CITY: "Mumbai",
      GENDER: "female",
      ISFAVORITE: false,
      PRIOR: 0,
    },
    {
      NAME: "Rajesh",
      EMAIL: "rajesh789@gmail.com",
      PASSWORD: "Rajesh@789",
      MOBILE: "8765432109",
      DOB: "18-02-1992",
      AGE: "33",
      CITY: "Delhi",
      GENDER: "male",
      ISFAVORITE: true,
      PRIOR: 1,
    },
    {
      NAME: "Simran",
      EMAIL: "simran101@gmail.com",
      PASSWORD: "Simran@101",
      MOBILE: "7654321098",
      DOB: "12-09-2000",
      AGE: "25",
      CITY: "Pune",
      GENDER: "female",
      ISFAVORITE: false,
      PRIOR: 0,
    },
    {
      NAME: "Vikas",
      EMAIL: "vikas2001@gmail.com",
      PASSWORD: "Vikas@2001",
      MOBILE: "9988776655",
      DOB: "21-11-2001",
      AGE: "23",
      CITY: "Chennai",
      GENDER: "male",
      ISFAVORITE: true,
      PRIOR: 1,
    },
    {
      NAME: "Priya",
      EMAIL: "priya456@gmail.com",
      PASSWORD: "Priya@456",
      MOBILE: "2345678901",
      DOB: "15-5-2004",
      AGE: "21",
      CITY: "Surat",
      GENDER: "female",
      ISFAVORITE: false,
      PRIOR: 0
    },
    {
      NAME: "Amit",
      EMAIL: "amit789@gmail.com",
      PASSWORD: "Amit@789",
      MOBILE: "3456789012",
      DOB: "10-10-2000",
      AGE: "24",
      CITY: "Vadodara",
      GENDER: "male",
      ISFAVORITE: true,
      PRIOR: 1
    },

  ];

  static void addUser({
    required String name,
    required String email,
    required String password,
    required String mobile,
    required String dob,
    required String age,
    required String city,
    required String gender,
    required List<List> hobbies,
    required int prior,
    bool isFavorite = false,
  }) {
    Map<String, dynamic> user = {};
    user[NAME] = name;
    user[EMAIL] = email;
    user[PASSWORD] = password;
    user[MOBILE] = mobile;
    user[DOB] = dob;
    user[AGE] = age;
    user[CITY] = city;
    user[GENDER] = gender;
    user[HOBBIES] = hobbies.map((hobby) => List.from(hobby)).toList();
    user[ISFAVORITE] = isFavorite;
    user[PRIOR] = prior;
    userList.add(user);
  }

  static List<Map<String, dynamic>> getUserList() {
    return userList;
  }

  static Map<String, dynamic> getUser({required id}) {
    return userList[id];
  }

  static void updateUser({
    required int id,
    required String name,
    required String email,
    required String password,
    required String mobile,
    required String dob,
    required String age,
    required String city,
    required String gender,
    required List<List> hobbies,
    required int prior,
    bool isFavorite = false,
  }) {
    Map<String, dynamic> user = {};
    user[NAME] = name;
    user[EMAIL] = email;
    user[PASSWORD] = password;
    user[MOBILE] = mobile;
    user[DOB] = dob;
    user[AGE] = age;
    user[CITY] = city;
    user[GENDER] = gender;
    user[HOBBIES] = hobbies.map((hobby) => List.from(hobby)).toList();
    user[ISFAVORITE] = isFavorite;
    user[PRIOR] = prior;
    userList[id] = user;
  }

  static void removeUser({required id}) {
    //region removeUser
    userList.removeAt(id);
    //endregion
  }
}
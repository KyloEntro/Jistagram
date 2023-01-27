import '../Models/profile.dart';

List<Profile> get_profiles() {
  List<Profile> result = [];

  result.add(Profile(id: 1, name: "Loïc", imageFile: "assets/profile1.jpg"));
  result.add(Profile(id: 2, name: "Sarah", imageFile: "assets/profile2.jpg"));
  result.add(Profile(id: 3, name: "Clara", imageFile: "assets/profile3.jpg"));
  result.add(Profile(id: 4, name: "Maëlle", imageFile: "assets/profile4.jpg"));
  result.add(Profile(id: 5, name: "Cécile", imageFile: "assets/profile5.jpg"));
  result.add(Profile(id: 6, name: "Adrien", imageFile: "assets/profile6.jpg"));
  result
      .add(Profile(id: 7, name: "Cendrine", imageFile: "assets/profile7.jpg"));
  result.add(Profile(id: 8, name: "Ulyce", imageFile: "assets/profile8.jpg"));
  result.add(Profile(id: 9, name: "Bruno", imageFile: "assets/profile9.jpg"));
  result
      .add(Profile(id: 10, name: "Marine", imageFile: "assets/profile10.jpg"));
  result
      .add(Profile(id: 11, name: "Pauline", imageFile: "assets/profile11.jpg"));

  return result;
}

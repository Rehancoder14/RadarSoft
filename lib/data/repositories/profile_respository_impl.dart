// import 'dart:developer';

// import 'package:doctor_app_development/data/repositories/api_repository_impl.dart';
// import 'package:doctor_app_development/data/utils/api_constants.dart';
// import 'package:doctor_app_development/domain/interface/profile_repository.dart';
// import 'package:doctor_app_development/domain/modal/login/login_model.dart';
// import 'package:doctor_app_development/domain/modal/profile_model/doctor_profile.dart';

// class DoctorProfileRepositoryImpl implements DoctorProfileRepository {
//   @override
//   Future<DoctorProfile> getDoctorProfile() async {
//     int id = 1;
//     var response = await ApiRepositoryImpl()
//         .get("${ApiConstants.getDoctorProfileApi}?doctor_id=$id");
//     log(response.toString());
//     if (response.statusCode == 200) {
//       return DoctorProfile.fromJson(response.data);
//     } else {
//       return DoctorProfile.fromJson({
//         "message": response.statusMessage ?? "",
//         "statusCode": response.statusCode,
//         "data": []
//       });
//     }
//   }

//   @override
//   Future<LoginModel> updateDoctorProfile(Map<String, dynamic> data) async {
//     var response =
//         await ApiRepositoryImpl().post(ApiConstants.updateDoctorProfile, data);
//     log(response.toString());
//     if (response.statusCode == 200) {
//       return LoginModel.fromJson(response.data);
//     } else {
//       return LoginModel.fromJson({
//         "message": response.statusMessage ?? "",
//         "statusCode": response.statusCode,
//       });
//     }
//   }
// }

abstract class ApiRepository {
  Future<dynamic> post(String methodName, Map<String, dynamic> data);
  Future<dynamic> get(String methodName, {Map<String, dynamic>? data});
}

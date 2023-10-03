import '../../base/model/base_model.dart';
import 'core_dio.dart';



/*
extension CoreDioOperations on CoreDio {
  R? responseParser<R, T>(BaseModel<T> model, dynamic data) {
    if (data is List<Map<String, Object>>) {
      return data.map((e) => T.fr

          model.fromJson(e)).toList().cast<T>() as R;
    } else if (data is Map) {
      return model.fromJson(data as Map<String, Object>) as R;
    }
    return data as R?;
  }
}


*/

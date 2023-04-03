import 'package:getx_mvvm/src/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? date;
  String? message;
  ApiResponse(this.status, this.date, this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed() : status = Status.COMPLETED;
  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    
    return 'Status: $status \n Message: $message \n Date: $date';
  }
}

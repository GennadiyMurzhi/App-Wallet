import 'package:rxdart/rxdart.dart';

///This receiver is needed for convenient Data to UI transfer
class DataReceiver<T> {
  ///When initializing the DataReceiver object, pass an empty data in the constructor parameters
  DataReceiver(this._data) : dataStream = BehaviorSubject<T>.seeded(_data);

  T _data;

  ///Stream through which updated data will arrive
  final BehaviorSubject<T> dataStream;

  ///add new data in stream
  Future<void> addData(T data) async {
    dataStream.add(_data = data);
  }
}

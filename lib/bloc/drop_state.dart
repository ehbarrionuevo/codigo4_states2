abstract class DropState {}

class DropStateInit extends DropState {
  List<String> data;
  String value;
  DropStateInit({required this.data, required this.value});
}

class DropState1 extends DropState {
  List<String> data;
  String value;
  DropState1({required this.data, required this.value});
}

class DropState2 extends DropState {}

abstract class DropEvent {}

class DropInitEvent extends DropEvent {}

class DropSelect1Event extends DropEvent {
  String value;
  DropSelect1Event({required this.value});
}

class DropSelect2Event extends DropEvent {}

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TimeAnnotation extends Equatable {
  const TimeAnnotation({
    required this.isCurrentUser,
    required this.text,
  });

  @override
  List<Object> get props => [text];

  final bool isCurrentUser;
  final String text;
}

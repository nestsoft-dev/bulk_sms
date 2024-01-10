// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MessageModel {
  final String phoneNumber;
  final String message;
  MessageModel({
    required this.phoneNumber,
    required this.message,
  });

  MessageModel copyWith({
    String? phoneNumber,
    String? message,
  }) {
    return MessageModel(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
      'message': message,
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      phoneNumber: map['phoneNumber'] as String,
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageModel.fromJson(String source) => MessageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MessageModel(phoneNumber: $phoneNumber, message: $message)';

  @override
  bool operator ==(covariant MessageModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.phoneNumber == phoneNumber &&
      other.message == message;
  }

  @override
  int get hashCode => phoneNumber.hashCode ^ message.hashCode;
}

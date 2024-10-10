import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply_model.freezed.dart';
part 'reply_model.g.dart';

@freezed
class ReplyModel with _$ReplyModel {
  factory ReplyModel({
    required String replyId,
    required String reviewerId, // The person who is replying (user or seller)
    required String content, // The actual reply content
    required bool isFromSeller, // true if the reply is from the seller
    required DateTime replyDate,
  }) = _ReplyModel;

  factory ReplyModel.fromJson(Map<String, dynamic> json) =>
      _$ReplyModelFromJson(json);
}

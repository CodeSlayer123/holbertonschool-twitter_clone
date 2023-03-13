import 'package:flutter/material.dart';

class Post {
  final String text;
  final String userID;
  final int likeCount;
  final List<String> likeList;

  Post({
    this.text = 'text',
    this.userID = 'userID',
    this.likeCount = 0,
    this.likeList = const [],
  });
  static Post fromJson(Map<String, dynamic> json) => Post(
    text: json['text'],
    userID: json['userID'],
    likeCount: json['likeCount'],
    likeList: json['likeList'],
  );

   Map<String, Object> toJson() => {
    'text': text,
    'userID': userID,
    'likeCount': likeCount,
    'likeList': likeList,
  };

}
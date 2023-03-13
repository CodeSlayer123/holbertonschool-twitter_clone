import 'package:flutter/material.dart';

class User {
  final String key;
  final String userID;
  final String email;
  final String name;
  final String userName;
  final String displayName;
  final String imageUrl;
  final int followers;
  final int following;
  final List<dynamic> followersList;
  final List<dynamic> followingList;
  final String bio;
  final String coverImgUrl;



  User({
    this.key = 'key',
    this.email = 'email',
    this.name = 'name',
    this.userName = 'userName',
    this.displayName = 'displayName',
    this.imageUrl = './sample_image.png',
    this.followers = 0,
    this.following = 0,
    this.followersList = const [],
    this.followingList = const [],
    this.bio = 'No bio available',
    this.coverImgUrl = './sample_image.png',

  });
  static User fromJson(Map<String, dynamic> json) => User(
    key: json['key'],
    email: json['email'],
    name: json['name'],
    userName: json['userName'],
    displayName: json['displayName'],
    followers: json['followers'],
    following: json['following'],
    followersList: json['followersList'],
    followingList: json['followingList'],
  );

   Map<String, Object> toJson() => {
    'key': key,
    'email': email,
    'name': name,
    'userName': userName,
    'displayName': displayName,
    'followers': followers,
    'following': following,
    'followersList': followersList,
    'followingList': followingList,
  };

  Future< User > getUserByID(String userID) {
    return userID;

  }
}
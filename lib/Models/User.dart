import 'package:picslash/Models/ProfileImage.dart';

class User{
  final String id;
  final String updated_at;
  final String username;
  final String name;
  final String first_name;
  final String last_name;
  final String twitter_username;
  final String portfolio_url;
  final String bio;
  final String location;
  final ProfileImage profile_image;
  final String instagram_username;
  final int total_collections;
  final int total_likes;
  final int total_photos;
  final bool accepted_tos;

  User(
    this.id,
    this.updated_at, 
    this.username, 
    this.name, 
    this.first_name, 
    this.last_name, 
    this.twitter_username, 
    this.portfolio_url, 
    this.bio, 
    this.location, 
    this.profile_image, 
    this.instagram_username, 
    this.total_collections, 
    this.total_likes, 
    this.total_photos, 
    this.accepted_tos
  );


  User.fromJson(Map<String, dynamic> json):
    id = json['id'],
    updated_at = json['updated_at'],
    username = json['username'],
    name = json['name'] == null ? "null" : json['name'],
    first_name = json['first_name'] == null ? "null" : json['first_name'],
    last_name = json['last_name'] == null ? "null" : json['last_name'],
    twitter_username = json['twitter_username'] == null ? "null" : json['twitter_username'],
    portfolio_url = json['portfolio_url'] == null ? "null" : json['portfolio_url'],
    bio = json['bio'] == null ? "null" : json['bio'],
    location = json['location'] == null ? "null" : json['location'],
    profile_image = ProfileImage.fromJson(json['profile_image']),
    instagram_username = json['instagram_username'] == null ? "null" : json['instagram_username'],
    total_collections = json['total_collections'] == null ? "null" : json['total_collections'],
    total_likes = json['total_likes'] == null ? "null" : json['total_likes'],
    total_photos = json['total_photos'] == null ? "null" : json['total_photos'],
    accepted_tos = json['accepted_tos'] == null ? "null" : json['accepted_tos'];

  Map<String, dynamic> toJson() =>{
      'id': id,
      'updated_at': updated_at,
      'username': username,
      'name':name,
      'first_name': first_name,
      'last_name': last_name,
      'twitter_username': twitter_username,
      'portfolio_url':portfolio_url,
      'bio': bio,
      'location': location,
      'profile_image': profile_image,
      'instagram_username':instagram_username,
      'total_collections': total_collections,
      'total_likes': total_likes,
      'total_photos': total_photos,
      'accepted_tos':accepted_tos,
  };
  
}
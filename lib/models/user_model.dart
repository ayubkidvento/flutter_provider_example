// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String login;
  final int id;
  final String? nodeId;
  final String? avatarUrl;
  final String url;
  final String? htmlUrl;
  final String? followersUrl;
  final String? followingUrl;
  final String? gistsUrl;
  final String? starredUrl;
  final String? subscriptionsUrl;
  final String? organizationsUrl;
  final String? reposUrl;
  final String? eventsUrl;
  final String? receivedEventsUrl;
  final String? type;
  final bool? siteAdmin;
  final String? name;
  final String? company;
  final String? blog;
  final String? location;
  final String? email;
  final bool? hireable;
  final String? bio;
  final String? twitterUsername;
  final int? publicRepos;
  final int? publicGists;
  final int? followers;
  final int? following;
  final String? createdAt;
  final String? updatedAt;
  UserModel({
    required this.login,
    required this.id,
    this.nodeId,
    this.avatarUrl,
    required this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    required this.hireable,
    this.bio,
    this.twitterUsername,
    this.publicRepos,
    this.publicGists,
    this.followers,
    this.following,
    this.createdAt,
    this.updatedAt,
  });

  UserModel copyWith({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    String? type,
    bool? siteAdmin,
    String? name,
    String? company,
    String? blog,
    String? location,
    String? email,
    bool? hireable,
    String? bio,
    String? twitterUsername,
    int? publicRepos,
    int? publicGists,
    int? followers,
    int? following,
    String? createdAt,
    String? updatedAt,
  }) {
    return UserModel(
      login: login ?? this.login,
      id: id ?? this.id,
      nodeId: nodeId ?? this.nodeId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      url: url ?? this.url,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      followersUrl: followersUrl ?? this.followersUrl,
      followingUrl: followingUrl ?? this.followingUrl,
      gistsUrl: gistsUrl ?? this.gistsUrl,
      starredUrl: starredUrl ?? this.starredUrl,
      subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
      organizationsUrl: organizationsUrl ?? this.organizationsUrl,
      reposUrl: reposUrl ?? this.reposUrl,
      eventsUrl: eventsUrl ?? this.eventsUrl,
      receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
      type: type ?? this.type,
      siteAdmin: siteAdmin ?? this.siteAdmin,
      name: name ?? this.name,
      company: company ?? this.company,
      blog: blog ?? this.blog,
      location: location ?? this.location,
      email: email ?? this.email,
      hireable: hireable ?? this.hireable,
      bio: bio ?? this.bio,
      twitterUsername: twitterUsername ?? this.twitterUsername,
      publicRepos: publicRepos ?? this.publicRepos,
      publicGists: publicGists ?? this.publicGists,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'login': login,
      'id': id,
      'nodeId': nodeId,
      'avatarUrl': avatarUrl,
      'url': url,
      'htmlUrl': htmlUrl,
      'followersUrl': followersUrl,
      'followingUrl': followingUrl,
      'gistsUrl': gistsUrl,
      'starredUrl': starredUrl,
      'subscriptionsUrl': subscriptionsUrl,
      'organizationsUrl': organizationsUrl,
      'reposUrl': reposUrl,
      'eventsUrl': eventsUrl,
      'receivedEventsUrl': receivedEventsUrl,
      'type': type,
      'siteAdmin': siteAdmin,
      'name': name,
      'company': company,
      'blog': blog,
      'location': location,
      'email': email,
      'hireable': hireable,
      'bio': bio,
      'twitterUsername': twitterUsername,
      'publicRepos': publicRepos,
      'publicGists': publicGists,
      'followers': followers,
      'following': following,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      login: map['login'],
      id: map['id'],
      nodeId: map['node_id'],
      avatarUrl: map['avata_url'],
      url: map['url'],
      htmlUrl: map['html_url'],
      followersUrl: map['followers_url'],
      followingUrl: map['following_url'],
      gistsUrl: map['gists_url'],
      starredUrl: map['starred_url'],
      subscriptionsUrl: map['subscriptions_url'],
      organizationsUrl: map['organizations_url'],
      reposUrl: map['repos_url'],
      eventsUrl: map['events_url'],
      receivedEventsUrl: map['received_events_url'],
      type: map['type'],
      siteAdmin: map['site_admin'],
      name: map['name'],
      company: map['company'],
      blog: map['blog'],
      location: map['location'],
      email: map['email'],
      hireable: map['hireable'],
      bio: map['bio'],
      twitterUsername: map['twitter_username'],
      publicRepos: map['public_repos'],
      publicGists: map['public_gists'],
      followers: map['followers'],
      following: map['following'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, siteAdmin: $siteAdmin, name: $name, company: $company, blog: $blog, location: $location, email: $email, hireable: $hireable, bio: $bio, twitterUsername: $twitterUsername, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.login == login &&
        other.id == id &&
        other.nodeId == nodeId &&
        other.avatarUrl == avatarUrl &&
        other.url == url &&
        other.htmlUrl == htmlUrl &&
        other.followersUrl == followersUrl &&
        other.followingUrl == followingUrl &&
        other.gistsUrl == gistsUrl &&
        other.starredUrl == starredUrl &&
        other.subscriptionsUrl == subscriptionsUrl &&
        other.organizationsUrl == organizationsUrl &&
        other.reposUrl == reposUrl &&
        other.eventsUrl == eventsUrl &&
        other.receivedEventsUrl == receivedEventsUrl &&
        other.type == type &&
        other.siteAdmin == siteAdmin &&
        other.name == name &&
        other.company == company &&
        other.blog == blog &&
        other.location == location &&
        other.email == email &&
        other.hireable == hireable &&
        other.bio == bio &&
        other.twitterUsername == twitterUsername &&
        other.publicRepos == publicRepos &&
        other.publicGists == publicGists &&
        other.followers == followers &&
        other.following == following &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return login.hashCode ^
        id.hashCode ^
        nodeId.hashCode ^
        avatarUrl.hashCode ^
        url.hashCode ^
        htmlUrl.hashCode ^
        followersUrl.hashCode ^
        followingUrl.hashCode ^
        gistsUrl.hashCode ^
        starredUrl.hashCode ^
        subscriptionsUrl.hashCode ^
        organizationsUrl.hashCode ^
        reposUrl.hashCode ^
        eventsUrl.hashCode ^
        receivedEventsUrl.hashCode ^
        type.hashCode ^
        siteAdmin.hashCode ^
        name.hashCode ^
        company.hashCode ^
        blog.hashCode ^
        location.hashCode ^
        email.hashCode ^
        hireable.hashCode ^
        bio.hashCode ^
        twitterUsername.hashCode ^
        publicRepos.hashCode ^
        publicGists.hashCode ^
        followers.hashCode ^
        following.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}

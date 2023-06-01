class UnsplashImageModel {
  String? id;
  String? slug;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  Urls? urls;
  Links? links;
  int? likes;
  bool? likedByUser;
  List<String>? currentUserCollections;
  Sponsorship? sponsorship;
  TopicSubmissions? topicSubmissions;
  Sponsor? user;

  UnsplashImageModel(
      {this.id,
        this.slug,
        this.createdAt,
        this.updatedAt,
        this.promotedAt,
        this.width,
        this.height,
        this.color,
        this.blurHash,
        this.description,
        this.altDescription,
        this.urls,
        this.links,
        this.likes,
        this.likedByUser,
        this.currentUserCollections,
        this.sponsorship,
        this.topicSubmissions,
        this.user});

  UnsplashImageModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    promotedAt = json['promoted_at'];
    width = json['width'];
    height = json['height'];
    color = json['color'];
    blurHash = json['blur_hash'];
    description = json['description'];
    altDescription = json['alt_description'];
    urls = json['urls'] != null ? Urls.fromJson(json['urls']) : null;
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    likes = json['likes'];
    likedByUser = json['liked_by_user'];
    if (json['current_user_collections'] != null) {
      currentUserCollections = <String>[];
      json['current_user_collections'].forEach((v) {
        currentUserCollections!.add(v);
      });
    }
    sponsorship = json['sponsorship'] != null
        ? Sponsorship.fromJson(json['sponsorship'])
        : null;
    topicSubmissions = json['topic_submissions'] != null
        ? TopicSubmissions.fromJson(json['topic_submissions'])
        : null;
    user = json['user'] != null ? Sponsor.fromJson(json['user']) : null;
  }
}

class Urls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls(
      {this.raw,
        this.full,
        this.regular,
        this.small,
        this.thumb,
        this.smallS3});

  Urls.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
    smallS3 = json['small_s3'];
  }
}

class Links {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  Links({this.self, this.html, this.download, this.downloadLocation});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    html = json['html'];
    download = json['download'];
    downloadLocation = json['download_location'];
  }
}

class Sponsorship {
  List<String>? impressionUrls;
  String? tagline;
  String? taglineUrl;
  Sponsor? sponsor;

  Sponsorship(
      {this.impressionUrls, this.tagline, this.taglineUrl, this.sponsor});

  Sponsorship.fromJson(Map<String, dynamic> json) {
    impressionUrls = json['impression_urls'].cast<String>();
    tagline = json['tagline'];
    taglineUrl = json['tagline_url'];
    sponsor =
    json['sponsor'] != null ? Sponsor.fromJson(json['sponsor']) : null;
  }
}

class Sponsor {
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  UserLinks? links;
  ProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  Social? social;

  Sponsor(
      {this.id,
        this.updatedAt,
        this.username,
        this.name,
        this.firstName,
        this.lastName,
        this.twitterUsername,
        this.portfolioUrl,
        this.bio,
        this.location,
        this.links,
        this.profileImage,
        this.instagramUsername,
        this.totalCollections,
        this.totalLikes,
        this.totalPhotos,
        this.acceptedTos,
        this.forHire,
        this.social});

  Sponsor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    username = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    twitterUsername = json['twitter_username'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    links = json['links'] != null ? UserLinks.fromJson(json['links']) : null;
    profileImage = json['profile_image'] != null
        ? ProfileImage.fromJson(json['profile_image'])
        : null;
    instagramUsername = json['instagram_username'];
    totalCollections = json['total_collections'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    acceptedTos = json['accepted_tos'];
    forHire = json['for_hire'];
    social =
    json['social'] != null ? Social.fromJson(json['social']) : null;
  }
}

class UserLinks {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  UserLinks(
      {this.self,
        this.html,
        this.photos,
        this.likes,
        this.portfolio,
        this.following,
        this.followers});

  UserLinks.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    html = json['html'];
    photos = json['photos'];
    likes = json['likes'];
    portfolio = json['portfolio'];
    following = json['following'];
    followers = json['followers'];
  }
}

class ProfileImage {
  String? small;
  String? medium;
  String? large;

  ProfileImage({this.small, this.medium, this.large});

  ProfileImage.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
  }
}

class Social {
  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;
  String? paypalEmail;

  Social(
      {this.instagramUsername,
        this.portfolioUrl,
        this.twitterUsername,
        this.paypalEmail});

  Social.fromJson(Map<String, dynamic> json) {
    instagramUsername = json['instagram_username'];
    portfolioUrl = json['portfolio_url'];
    twitterUsername = json['twitter_username'];
    paypalEmail = json['paypal_email'];
  }
}

class TopicSubmissions {
  Travel? travel;

  TopicSubmissions({this.travel});

  TopicSubmissions.fromJson(Map<String, dynamic> json) {
    travel =
    json['travel'] != null ? Travel.fromJson(json['travel']) : null;
  }
}

class Travel {
  String? status;
  String? approvedOn;

  Travel({this.status, this.approvedOn});

  Travel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    approvedOn = json['approved_on'];
  }
}

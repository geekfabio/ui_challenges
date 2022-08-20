class Travels {
  String image;
  String score;
  String title;
  String subTitle;

  Travels(
      {this.image = "assets/images/travel_app/image.jpg",
      this.score = "4.5",
      this.title = "England",
      this.subTitle = "The Shard, London"});
}

List<Travels> travels = [
  Travels(
    image: "assets/images/travel_app/image.jpg",
    score: "4.5",
    title: "French",
    subTitle: "Paris, Tower",
  ),
  Travels(
    image: "assets/images/travel_app/image1.jpg",
    score: "4.5",
    title: "England",
    subTitle: "The Shard, London",
  ),
  Travels(
    image: "assets/images/travel_app/image3.jfif",
    score: "4.5",
    title: "Japan",
    subTitle: "Chureta, pagoda",
  ),
  Travels(
    image: "assets/images/travel_app/image2.jpg",
    score: "4.5",
    title: "Italy",
    subTitle: "Ralh-----",
  ),
];

// japan image

class JapanImage {
  String image;
  String title;
  String description;

  JapanImage(
      {this.image = "assets/images/travel_app/image10.jpg",
      this.title = "Tokyo",
      this.description =
          "Tokyo is considered to be one of the world's most important"});
}

List<JapanImage> japan = [
  JapanImage(
    image: "assets/images/travel_app/image10.jpg",
    title: "Tokyo",
    description:
        "Tokyo is considered to be one of the world's most important and powerful global cities. The 23 Special Wards of Tokyo were formerly Tokyo City. On July 1, 1943, it merged with Tokyo Prefecture and became Tokyo Metropolis with an additional 26 municipalities in the western part of the prefecture.",
  ),
  JapanImage(
    image: "assets/images/travel_app/image11.jpg",
    title: "Kyoto",
    description:
        "Tokyo is considered to be one of the world's most important and powerful global cities. The 23 Special Wards of Tokyo were formerly Tokyo City. On July 1, 1943, it merged with Tokyo Prefecture and became Tokyo Metropolis with an additional 26 municipalities in the western part of the prefecture.",
  ),
  JapanImage(
    image: "assets/images/travel_app/image12.jpg",
    title: "Osaka",
    description:
        "Tokyo is considered to be one of the world's most important and powerful global cities. The 23 Special Wards of Tokyo were formerly Tokyo City. On July 1, 1943, it merged with Tokyo Prefecture and became Tokyo Metropolis with an additional 26 municipalities in the western part of the prefecture.",
  ),
  JapanImage(
    image: "assets/images/travel_app/image13.jpeg",
    title: "Aichi",
    description:
        "Tokyo is considered to be one of the world's most important and powerful global cities. The 23 Special Wards of Tokyo were formerly Tokyo City. On July 1, 1943, it merged with Tokyo Prefecture and became Tokyo Metropolis with an additional 26 municipalities in the western part of the prefecture.",
  ),
];

class TripData {
  final String title;
  final String location;
  final String imageUrl;

  TripData({
    required this.title,
    required this.location,
    required this.imageUrl,
  });
}

List<TripData> getTripList() {
  return [
    TripData(
      title: "เชียงใหม่",
      location: "ประเทศไทย",
      imageUrl:
          "https://i0.wp.com/www.iurban.in.th/wp-content/uploads/2017/09/icover2017-romantic-cm5-1.jpg",
    ),
    TripData(
      title: "ภูเก็ต",
      location: "ประเทศไทย",
      imageUrl:
          "https://images.pexels.com/photos/18198497/pexels-photo-18198497.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    TripData(
      title: "กรุงเทพฯ",
      location: "ประเทศไทย",
      imageUrl:
          "https://media.istockphoto.com/id/984661764/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%9E%E0%B8%A3%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%97%E0%B8%B4%E0%B8%95%E0%B8%A2%E0%B9%8C%E0%B8%82%E0%B8%B6%E0%B9%89%E0%B8%99%E0%B8%81%E0%B8%B1%E0%B8%9A%E0%B8%9E%E0%B8%A3%E0%B8%B0%E0%B8%9A%E0%B8%A3%E0%B8%A1%E0%B8%A1%E0%B8%AB%E0%B8%B2%E0%B8%A3%E0%B8%B2%E0%B8%8A%E0%B8%A7%E0%B8%B1%E0%B8%87%E0%B8%81%E0%B8%A3%E0%B8%B8%E0%B8%87%E0%B9%80%E0%B8%97%E0%B8%9E%E0%B8%AF-%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B9%80%E0%B8%97%E0%B8%A8%E0%B9%84%E0%B8%97%E0%B8%A2.jpg?s=612x612&w=0&k=20&c=kIWdkfF_jXb3y51mMhAN0UlUALbrzigp1tG3zUbo648=",
    ),
    TripData(
      title: "อยุธยา",
      location: "ประเทศไทย",
      imageUrl:
          "https://cdn.pixabay.com/photo/2016/11/14/03/38/phra-nakhon-si-ayutthaya-1822502_640.jpg",
    ),
    TripData(
      title: "กระบี่",
      location: "ประเทศไทย",
      imageUrl:
          "https://cdn.pixabay.com/photo/2014/10/15/09/49/spoke-the-beach-489422_640.jpg",
    ),
    TripData(
      title: "พัทยา",
      location: "ประเทศไทย",
      imageUrl:
          "https://media.istockphoto.com/id/1361191382/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%AD%E0%B9%88%E0%B8%B2%E0%B8%A7%E0%B8%9E%E0%B8%B1%E0%B8%97%E0%B8%A2%E0%B8%B2-%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B9%80%E0%B8%97%E0%B8%A8%E0%B9%84%E0%B8%97%E0%B8%A2.jpg?s=612x612&w=0&k=20&c=rMMxbSmy9kSp4ixb_8PCJX6tkftN46l3Mx5m-A40GqI=",
    ),
  ];
}

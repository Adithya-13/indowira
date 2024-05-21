import 'package:indowira/gen/assets.gen.dart';

class Community {
  final String name;
  final String createdBy;
  final String image;
  Community({
    required this.name,
    required this.createdBy,
    required this.image,
  });
}

final dummyCommunityList = [
  Community(
    name: "Indowira",
    createdBy: "Dika",
    image: Assets.images.indowiraLogo.path,
  ),
  Community(
    name: "Sepedaan",
    createdBy: "Jia",
    image: Assets.images.sepedaanLogo.path,
  ),
  Community(
    name: "Masak Asik",
    createdBy: "Dika",
    image: Assets.images.masakAsikLogo.path,
  ),
  Community(
    name: "Freelancer",
    createdBy: "Hery",
    image: Assets.images.freelancerLogo.path,
  ),
];

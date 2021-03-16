import 'package:places/domain/sight_type.dart';

import 'domain/sight.dart';

final List<Sight> sights = [
  Sight(
    name: 'Aw, shiny riddle!',
    lat: 58.00709,
    lon: 56.188620,
    url: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    details: 'How swashbuckling. You view like a mast.',
    type: SightType.museum(),
  ),
  Sight(
    name: 'Daggers die with malaria!',
    lat: 58.019997,
    lon: 56.276140,
    url: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    details: 'Landlubbers hobble from urchins like proud winds.',
    type: SightType.theatre(),
  ),
  Sight(
    name: 'Moons scream on strength at tubbataha reef!',
    lat: 58.011041,
    lon: 56.237967,
    url: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    details: 'Well, endure me gold, ye mighty cloud!',
    type: SightType.cinema(),
  ),
  Sight(
    name: 'Ho-ho-ho! urchin of halitosis!',
    lat: 58.007960,
    lon: 56.216981,
    url: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    details: 'Scabbards are the girls of the real endurance.',
    type: SightType.cafe(),
  ),
];

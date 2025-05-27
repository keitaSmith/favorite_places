import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/models/place.dart';

class UserplacesNotifier extends StateNotifier<List<Place>> {
  UserplacesNotifier() : super(const []);
  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserplacesNotifier, List<Place>>(
      (ref) => UserplacesNotifier(),
    );

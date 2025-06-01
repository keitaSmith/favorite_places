import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/models/place.dart';
import 'dart:io';

class UserplacesNotifier extends StateNotifier<List<Place>> {
  UserplacesNotifier() : super(const []);
  void addPlace(String title, File image, PlaceLocation location) {
    final newPlace = Place(title: title, image: image, location: location);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserplacesNotifier, List<Place>>(
      (ref) => UserplacesNotifier(),
    );

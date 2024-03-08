void main() {
  List<String> favoriteHobbies = ['Reading', 'Hiking', 'Cooking', 'Gaming'];
  print('My favorite hobbies: $favoriteHobbies');
  favoriteHobbies.add('Painting');
  print('After adding a new hobby: $favoriteHobbies');
  favoriteHobbies.remove('Gaming');
  print('After removing a hobby: $favoriteHobbies');
  favoriteHobbies.sort();
  print('After sorting hobbies alphabetically: $favoriteHobbies');
  if (favoriteHobbies.isEmpty) {
    print('The list of hobbies is empty.');
  } else {
    print('The list of hobbies is not empty.');
  }
}

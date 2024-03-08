import 'dart:async';
import 'dart:math';
Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));
  List<String> quotes = [
    "The Lord is my shepherd; I shall not want.",
    "When pride cometh, then cometh shame: but with the lowly is wisdom.",
    "From that time Jesus began to preach, and to say, Repent: for the kingdom of heaven is at hand..",
    "For to be carnally minded [is] death; but to be spiritually minded is life and peace.",
    "Looking diligently lest any man fail of the grace of God; lest any root of bitterness springing up trouble [you], and thereby many be defiled;"
  ];
  Random random = Random();
  int index = random.nextInt(quotes.length);
  return quotes[index];
}
void main() async {
  print("Fetching a random bible verse...");
  String bibleVerse = await fetchRandomQuote();
  print("Random Bible verse: $bibleVerse");
}
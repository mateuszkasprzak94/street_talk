import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:street_talk/app/domain/models/flashcards_model.dart';

class FlashCardsThreeRepository {
  Stream<List<FlashCardsDetailModel>> getFlashCardsStream() {
    return FirebaseFirestore.instance
        .collection('flashcards_three')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return FlashCardsDetailModel(
            id: doc.id,
            word: doc['word'],
            translation: doc['translation'],
          );
        },
      ).toList();
    });
  }
}

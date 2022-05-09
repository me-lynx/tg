import '../model/vaccines.dart';

abstract class VaccinesDao {
  Future open() async {}
  Future<void> insert(Vaccines vaccines) async {}
  Future close() async {}
}

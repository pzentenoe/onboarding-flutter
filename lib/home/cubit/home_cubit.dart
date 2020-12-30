import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:onboarding/home/repository/home_repository.dart';
import 'package:onboarding/home/widgets/purchase_item.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository homeRepository;

  HomeCubit({@required this.homeRepository}) : super(HomeInitial());

  void loadPurchases() async {
    emit(HomeLoading());
    try {
      final purchases = await homeRepository.getPurchases();
      emit(HomeSuccess(purchases: purchases));
    } catch (e) {
      emit(HomeFailed(message: "Fallo al recuperar compras"));
    }
  }
}

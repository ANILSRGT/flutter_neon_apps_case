part of 'main_view_cubit.dart';

class MainViewState extends Equatable {
  const MainViewState({this.currentIndex = 0});

  final int currentIndex;

  @override
  List<Object?> get props => [currentIndex];

  MainViewState copyWith({int? currentIndex}) {
    return MainViewState(currentIndex: currentIndex ?? this.currentIndex);
  }
}

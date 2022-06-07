import 'package:mobx/mobx.dart';

import '../../../core/base/model/base_view_model.dart';

part 'build_home_viewmodel.g.dart';

class BuildHomeViewModel = _BuildHomeViewModelBase with  _$BuildHomeViewModel;


abstract class _BuildHomeViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;



  @observable
  int count = 0;

  @action
  void increment() {
      count++;
  }
  
}



class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
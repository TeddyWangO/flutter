class CountState {
  final int _count;

  get count => _count;

  CountState(this._count);

  CountState.initState() : _count = 0;
}

enum Actioning { increment }

CountState reducer(CountState state, action) {
  //匹配Action
  if (action == Actioning.increment) {
    return CountState(state.count + 1);
  }
  return state;
}

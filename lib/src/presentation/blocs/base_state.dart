class BaseState<T> {
  final bool loading;
  final T? data;
  final String? error;

  const BaseState({
    this.loading = false,
    this.data,
    this.error,
  });

  BaseState<T> copyWith({
    bool? loading,
    T? data,
    String? error,
  }) {
    return BaseState(
      loading: loading ?? this.loading,
      data: data ?? this.data,
      error: error,
    );
  }
}

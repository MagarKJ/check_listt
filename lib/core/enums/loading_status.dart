import 'package:flutter/material.dart';

enum LoadingStatus { initial, loading, success, failure }

extension LoadingStatusExtension on LoadingStatus {
  bool get isInitial => this == LoadingStatus.initial;
  bool get isLoading => this == LoadingStatus.loading;
  bool get isSuccess => this == LoadingStatus.success;
  bool get isFailure => this == LoadingStatus.failure;

  A when<A>({
    required A Function() loading,
    required A Function() success,
    required A Function() failure,
  }) {
    return switch (this) {
      LoadingStatus.success => success(),
      LoadingStatus.failure => failure(),
      _ => loading(),
    };
  }

  void listenWhen({
    VoidCallback? failure,
    VoidCallback? loading,
    VoidCallback? success,
  }) {
    return switch (this) {
      LoadingStatus.loading => loading?.call(),
      LoadingStatus.failure => failure?.call(),
      LoadingStatus.success => success?.call(),
      _ => null,
    };
  }
}

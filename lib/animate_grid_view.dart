library animate_grid_view;

import 'package:flutter/widgets.dart';

class AnimateGridView<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(T item, int index) itemBuilder;
  final SliverGridDelegateWithFixedCrossAxisCount gridDelegate;

  AnimateGridView({required this.itemBuilder, required this.items, required this.gridDelegate});

  @override
  _AnimateGridViewState<T> createState() => _AnimateGridViewState<T>();
}

class _AnimateGridViewState<T> extends State<AnimateGridView<T>> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: widget.gridDelegate,
      itemBuilder: (context, index) {
        return widget.itemBuilder(widget.items[index], index);
      },
      itemCount: widget.items.length,
    );
  }
}

class Item<T> {
  final T? item;

  Item(this.item);
}

class CircularQueue {
  final int size;
  late List<int?> _queue;
  int _start = -1;
  int _end = -1;
  int _currentSize = 0;

  CircularQueue(this.size) {
    _queue = List.filled(size, null);
  }

  // Push (enqueue)
  void enqueue(int value) {
    if (_currentSize == size) {
      print("Queue Overflow! Cannot add $value.");
      return;
    }

    if (_start == -1) {
      _start = 0;
    }

    _end = (_end + 1) % size;
    _queue[_end] = value;
    _currentSize++;
  }

  // Pop (dequeue)
  int? dequeue() {
    if (_currentSize == 0) {
      print("Queue Underflow! Nothing to remove.");
      return null;
    }

    int? removedValue = _queue[_start];
    _queue[_start] = null;
    _start = (_start + 1) % size;
    _currentSize--;

    if (_currentSize == 0) {
      _start = -1;
      _end = -1;
    }

    return removedValue;
  }

  // Peek at front
  int? front() {
    if (_currentSize == 0) {
      print("Queue is empty.");
      return null;
    }
    return _queue[_start];
  }

  // Get current size
  int currentSize() => _currentSize;

  // Print queue
  void display() {
    if (_currentSize == 0) {
      print("Queue is empty.");
      return;
    }
    print("Queue elements (front to rear):");
    for (int i = 0; i < _currentSize; i++) {
      int index = (_start + i) % size;
      print(_queue[index]);
    }
  }
}

# Data Structures and Algorithms in Ruby

This repository contains clean, efficient implementations of fundamental data structures and algorithms in Ruby, with minimal dependencies and comprehensive documentation.

## 📚 Data Structures

### Stack (`stack.rb`)
- **Type**: LIFO (Last In, First Out) data structure
- **Operations**: Push, Pop, Peek, Size, Empty
- **Time Complexity**: O(1) for all operations
- **Use Cases**: Function call stack, undo operations, expression evaluation

### Queue (`queue.rb`)
- **Type**: FIFO (First In, First Out) data structure
- **Operations**: Enqueue, Dequeue, Peek, Size, Empty
- **Time Complexity**: O(1) for all operations
- **Use Cases**: Task scheduling, breadth-first search, print spooling

### Min Heap (`min_heap.rb`)
- **Type**: Complete binary tree where parent ≤ children
- **Operations**: Insert, Extract Min, Peek, Size, Empty
- **Time Complexity**: O(log n) insertion/extraction, O(1) peek
- **Space Complexity**: O(n)
- **Use Cases**: Priority queues, heap sort, Dijkstra's algorithm, top-k problems

### Max Heap (`max_heap.rb`)
- **Type**: Complete binary tree where parent ≥ children
- **Operations**: Insert, Extract Max, Peek, Size, Empty
- **Time Complexity**: O(log n) insertion/extraction, O(1) peek
- **Space Complexity**: O(n)
- **Use Cases**: Priority queues, heap sort (descending), Prim's algorithm, scheduling

## 🔄 Sorting Algorithms

### Quick Sort (`quicksort.rb`)
- **Type**: Divide and conquer, in-place sorting
- **Time Complexity**: O(n log n) average, O(n²) worst case
- **Space Complexity**: O(log n) average, O(n) worst case
- **Use Cases**: General-purpose sorting, large datasets

### Merge Sort (`mergesort.rb`)
- **Type**: Divide and conquer, stable sorting
- **Time Complexity**: O(n log n) guaranteed
- **Space Complexity**: O(n)
- **Use Cases**: Stable sorting required, external sorting, linked lists

## 🚀 Getting Started

### Prerequisites
- Ruby 2.0 or higher

### Running Examples
```bash
# Run individual implementations
ruby stack.rb
ruby queue.rb
ruby min_heap.rb
ruby max_heap.rb
ruby quicksort.rb
ruby mergesort.rb
```

## 📖 Implementation Details

All implementations follow these principles:
- **Clean Code**: Readable, well-documented code with clear intent
- **Minimal Dependencies**: No external gems required
- **Comprehensive Documentation**: YARD-style comments with algorithm explanations
- **Production Ready**: Error handling, edge cases, and performance considerations
- **Educational**: Detailed comments explaining the "why" behind implementation choices

## 🎯 Design Principles

- **SOLID Principles**: Single responsibility, open/closed, etc.
- **DRY**: Don't repeat yourself
- **KISS**: Keep it simple, stupid
- **YAGNI**: You aren't gonna need it
- **Domain-Driven Design**: Clear boundaries and responsibilities

## 📝 Contributing

1. Fork the repository
2. Create a feature branch
3. Implement your changes with proper documentation
4. Add tests if applicable
5. Submit a pull request with a clear description


**Note**: These implementations are designed for educational purposes and production use. Each data structure and algorithm includes comprehensive documentation explaining the underlying concepts, time/space complexity, and practical applications. 

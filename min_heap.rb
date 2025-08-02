# A min heap implementation that maintains the heap property where
# the parent node is always smaller than or equal to its children.
#
# Algorithm Overview:
# - Min Heap is a complete binary tree where each parent node is smaller than or equal to its children
# - The root node always contains the minimum element
# - Insertion: O(log n) - Add element at end, then bubble up to restore heap property
# - Extraction: O(log n) - Remove root, replace with last element, then bubble down
# - Peek: O(1) - Return root element without removal
# - Space Complexity: O(n) where n is the number of elements
#
# Common Use Cases:
# - Priority queues where minimum element is needed first
# - Heap sort algorithm
# - Graph algorithms like Dijkstra's shortest path
# - Top-k problems (finding k smallest elements)
class MinHeap
  # Initialize an empty min heap
  def initialize
    @heap = []
  end

  # Insert a value into the heap and maintain heap property
  # @param value [Comparable] The value to insert
  # @return [MinHeap] self for method chaining
  def insert(value)
    @heap.push(value)
    heapify_up(@heap.length - 1)
    self
  end

  # Remove and return the minimum value from the heap
  # @return [Comparable, nil] The minimum value or nil if heap is empty
  def extract_min
    return nil if @heap.empty?

    min_value = @heap[0]
    last_value = @heap.pop

    unless @heap.empty?
      @heap[0] = last_value
      heapify_down(0)
    end

    min_value
  end

  # Return the minimum value without removing it
  # @return [Comparable, nil] The minimum value or nil if heap is empty
  def peek
    @heap.first
  end

  # Get the number of elements in the heap
  # @return [Integer] The size of the heap
  def size
    @heap.length
  end

  # Check if the heap is empty
  # @return [Boolean] true if heap is empty, false otherwise
  def empty?
    @heap.empty?
  end

  private

  # Restore heap property by bubbling up the element at given index
  # @param index [Integer] The index of the element to bubble up
  def heapify_up(index)
    parent_index = parent_of(index)

    if index > 0 && @heap[index] < @heap[parent_index]
      swap(index, parent_index)
      heapify_up(parent_index)
    end
  end

  # Restore heap property by bubbling down the element at given index
  # @param index [Integer] The index of the element to bubble down
  def heapify_down(index)
    smallest = index
    left_child = left_child_of(index)
    right_child = right_child_of(index)

    if left_child < @heap.length && @heap[left_child] < @heap[smallest]
      smallest = left_child
    end

    if right_child < @heap.length && @heap[right_child] < @heap[smallest]
      smallest = right_child
    end

    if smallest != index
      swap(index, smallest)
      heapify_down(smallest)
    end
  end

  # Calculate the parent index of a given index
  # @param index [Integer] The child index
  # @return [Integer] The parent index
  def parent_of(index)
    (index - 1) / 2
  end

  # Calculate the left child index of a given index
  # @param index [Integer] The parent index
  # @return [Integer] The left child index
  def left_child_of(index)
    2 * index + 1
  end

  # Calculate the right child index of a given index
  # @param index [Integer] The parent index
  # @return [Integer] The right child index
  def right_child_of(index)
    2 * index + 2
  end

  # Swap two elements in the heap
  # @param index1 [Integer] First index to swap
  # @param index2 [Integer] Second index to swap
  def swap(index1, index2)
    @heap[index1], @heap[index2] = @heap[index2], @heap[index1]
  end
end
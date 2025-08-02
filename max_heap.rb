# A max heap implementation that maintains the heap property where
# the parent node is always larger than or equal to its children.
#
# Algorithm Overview:
# - Max Heap is a complete binary tree where each parent node is larger than or equal to its children
# - The root node always contains the maximum element
# - Insertion: O(log n) - Add element at end, then bubble up to restore heap property
# - Extraction: O(log n) - Remove root, replace with last element, then bubble down
# - Peek: O(1) - Return root element without removal
# - Space Complexity: O(n) where n is the number of elements
#
# Common Use Cases:
# - Priority queues where maximum element is needed first
# - Heap sort algorithm (in descending order)
# - Graph algorithms like Prim's minimum spanning tree
# - Top-k problems (finding k largest elements)
# - Scheduling algorithms where highest priority tasks are processed first
class MaxHeap
  # Initialize an empty max heap
  def initialize
    @heap = []
  end

  # Insert a value into the heap and maintain heap property
  # @param value [Comparable] The value to insert
  # @return [MaxHeap] self for method chaining
  def insert(value)
    @heap.push(value)
    heapify_up(@heap.length - 1)
    self
  end

  # Remove and return the maximum value from the heap
  # @return [Comparable, nil] The maximum value or nil if heap is empty
  def extract_max
    return nil if @heap.empty?

    max_value = @heap[0]
    last_value = @heap.pop

    unless @heap.empty?
      @heap[0] = last_value
      heapify_down(0)
    end

    max_value
  end

  # Return the maximum value without removing it
  # @return [Comparable, nil] The maximum value or nil if heap is empty
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

    if index > 0 && @heap[index] > @heap[parent_index]
      swap(index, parent_index)
      heapify_up(parent_index)
    end
  end

  # Restore heap property by bubbling down the element at given index
  # @param index [Integer] The index of the element to bubble down
  def heapify_down(index)
    largest = index
    left_child = left_child_of(index)
    right_child = right_child_of(index)

    if left_child < @heap.length && @heap[left_child] > @heap[largest]
      largest = left_child
    end

    if right_child < @heap.length && @heap[right_child] > @heap[largest]
      largest = right_child
    end

    if largest != index
      swap(index, largest)
      heapify_down(largest)
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
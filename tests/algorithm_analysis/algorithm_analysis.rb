# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../exercises/algorithm_analysis/01.find_average'
require_relative '../../exercises/algorithm_analysis/02.find_the_sum'
require_relative '../../exercises/algorithm_analysis/03.find_the_largest'
require_relative '../../exercises/algorithm_analysis/04.find_the_smallest'
require_relative '../../exercises/algorithm_analysis/05.find_second_largest'
require_relative '../../exercises/algorithm_analysis/06.using_permutation'
require_relative '../../exercises/algorithm_analysis/07.compute_sum'
require_relative '../../exercises/algorithm_analysis/08.maximas_in_an_array'
require_relative '../../exercises/algorithm_analysis/09.merge_all'
require_relative '../../exercises/algorithm_analysis/10.reverse_array'
require_relative '../../exercises/algorithm_analysis/11.sort_binary'
require_relative '../../exercises/algorithm_analysis/12.sort_numbers'
require_relative '../../exercises/algorithm_analysis/13.find_duplicate_elements'
require_relative '../../exercises/algorithm_analysis/14.find_element'
require_relative '../../exercises/algorithm_analysis/15.find_two_elements'
require_relative '../../exercises/algorithm_analysis/16.find_sum_of_int_number'

# Test for AlgorithmAnalysis exercises
class TestAlgorithmAnalysis < Minitest::Test
  def test_find_average
    assert_equal(3, find_average([1, 2, 3, 4, 5]))
    assert_equal(5.2, find_average([3, 3, 5, 6, 9]))
    assert_equal(3.02, find_average([1.1, 2, 3, 4, 5]))

    refute_equal(3, find_average([1, 1, 3, 4, 5]))
  end

  def test_find_sum
    assert_equal(12, find_sum([[1, 2, 3], [1, 2, 3]]))
    assert_equal(9, find_sum([[1, 2], [1, 2, 3]]))
    assert_equal(18, find_sum([[1, 2, 3], [1, 2, 3], [1, 2, 3]]))
    assert_equal(24, find_sum([[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]]))
    assert_equal(28, find_sum([[1, 2, 3, 4], [1, 2, 3], [1, 2, 3], [1, 2, 3]]))

    refute_equal(12, find_sum([[1, 2, 3], [1, 2, 3], [1, 2, 3]]))
  end

  def test_find_largest
    assert_equal(10, find_largest([1, 4, 2, 7, 10, 2, 5, 8, 2]))

    refute_equal(10, find_largest([1, 4, 2, 7, 2, 5, 8, 2]))
  end

  def test_find_smallest
    assert_equal(0, find_smallest([1, 4, 2, 6, 4, 7, 8, 9, 1, 0, 3, 2, 1]))

    refute_equal(2, find_smallest([1, 4, 2, 6, 4, 7, 8, 9, 1, 0, 3, 2, 1]))
  end

  def test_find_second_largest
    assert_equal([20, 10], find_second_largest([10, 20]))
    assert_equal([90, 80], find_second_largest([10, 20, 30, 40, 50, 60, 70, 80, 90]))
    assert_equal([90, 80], find_second_largest([10, 20, 30, 40, 50, 60, 70, 80, 90, 10]))
    assert_equal([90, 90], find_second_largest([10, 20, 30, 40, 50, 60, 70, 80, 90, 10, 90, 20]))
    assert_equal([90, 70], find_second_largest([10, 90, 70, 60, 50, 40, 30, 20, 10]))

    refute_equal([90, 70], find_second_largest([10, 90, 80, 60, 50, 40, 30, 20, 10]))
  end

  def test_permutation
    assert_equal([[1, 2], [2, 1]], permutation([1, 2], 0, 2))
    assert_equal([[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 2, 1], [3, 1, 2]], permutation([1, 2, 3], 0, 3))

    refute_equal([[]], permutation([1, 2, 3, 4, 5], 0, 5))
  end

  def test_sum_n
    assert_equal(15, sum_n([1, 2, 3, 4, 5]))
    refute_equal(15, sum_n([1, 2, 3, 4, 6]))
  end

  def test_all_maximas
    assert_equal(10, all_maximas([1, 3, 5, 7, 1, 4, 8, 10, 2, 9]))
    refute_equal(10, all_maximas([1, 3, 5, 7, 1, 4, 8, 0, 2, 9]))
  end

  def test_merge_all_overlapping_intervals
    assert_equal([[1, 6]], merge_all([[1, 4], [3, 6]]))
    assert_equal([[1, 6], [8, 10]], merge_all([[1, 4], [3, 6], [8, 10]]))
    assert_equal([[1, 6], [8, 10]], merge_all([[1, 4], [3, 6], [8, 10], [2, 5]]))
    assert_equal([[1, 6], [7, 12]], merge_all([[1, 4], [3, 6], [8, 10], [2, 5], [7, 12]]))

    refute_equal([[1.6], [7, 12]], merge_all([[1, 4], [3, 6], [8, 10], [2, 5], [7, 1]]))
  end

  def test_reverse_array
    assert_equal([2, 1], rotate_array([1, 2]))
    assert_equal([3, 2, 1], rotate_array([1, 2, 3]))
    assert_equal([4, 3, 2, 1], rotate_array([1, 2, 3, 4]))
  end

  def test_sort_binary_array
    assert_equal([0], sort_binary([0]))
    assert_equal([1], sort_binary([1]))
    assert_equal([0, 1], sort_binary([1, 0]))
    assert_equal([0, 0, 1], sort_binary([0, 1, 0]))
    assert_equal([0, 1, 1], sort_binary([1, 0, 1]))
    assert_equal([0, 1, 1], sort_binary([1, 1, 0]))
    assert_equal([0, 1, 1], sort_binary([0, 1, 1]))
    assert_equal([0, 0, 1, 1], sort_binary([1, 0, 1, 0]))
    assert_equal([0, 0, 1, 1], sort_binary([0, 1, 0, 1]))
    assert_equal([0, 0, 0, 1, 1], sort_binary([0, 1, 0, 1, 0]))
    assert_equal([0, 0, 1, 1, 1], sort_binary([1, 0, 1, 0, 1]))
    assert_equal([0, 0, 0, 1, 1], sort_binary([1, 0, 0, 0, 1]))
    assert_equal([0, 0, 1, 1, 1], sort_binary([0, 1, 1, 1, 0]))
    assert_equal([0, 0, 1, 1, 1], sort_binary([0, 1, 0, 1, 1]))
  end

  def test_sort_numbers
    assert_equal([0, 1, 2], sort_numbers([2, 1, 0]))
    assert_equal([0, 0, 1, 2], sort_numbers([0, 2, 1, 0]))
    assert_equal([0, 0, 1, 1, 2], sort_numbers([1, 0, 2, 1, 0]))
    assert_equal([0, 0, 1, 1, 2, 2], sort_numbers([2, 1, 0, 2, 1, 0]))
    assert_equal([0, 0, 1, 1, 2, 2, 2], sort_numbers([2, 1, 0, 2, 2, 1, 0]))
  end

  def test_find_duplicate_elements
    assert_equal([0], find_duplicate_numbers([0, 1, 0]))
    assert_equal([1], find_duplicate_numbers([1, 0, 1]))
    assert_equal([2, 1], find_duplicate_numbers([2, 1, 2, 0, 1]))
    assert_equal([2, 1, 3], find_duplicate_numbers([2, 1, 3, 2, 0, 1, 3, 4]))
  end

  def test_find_element
    assert_equal(1, find_element([0, 1]))
    assert_equal(5, find_element([0, 1, 2, 3, 4, 5]))
    assert_equal(6, find_element([0, 1, 2, 3, 4, 5, 6]))
    assert_equal(5, find_element_with_rotated_array([5, 4, 3, 2, 1, 0]))
  end

  def test_find_two_elements
    assert_equal([1, 2], find_two_elements([1, 2, 3], 3))
    assert_equal([2, 1], find_two_elements([2, 1, 3], 3))
    assert_equal([4, 4], find_two_elements([4, 2, 1, 4, 3], 8))
  end

  def test_find_sum_of_int_number
    assert_equal(22, find_sum_of_int_number(1984))
    assert_equal(32, find_sum_of_int_number(5999))
    assert_equal(8, find_sum_of_int_number(2024))
  end
end

# frozen_string_literal: true

def merge_all(intervals)
  intervals = intervals.sort
  merged = [intervals[0]]

  i = 1
  while i < intervals.length
    current = intervals[i]
    previous = merged[merged.length - 1]

    if current[0] <= previous[1]
      previous[1] = [previous[1], current[1]].flatten.max
    else
      merged.push(current)
    end

    i += 1
  end

  merged
end

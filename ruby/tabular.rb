=begin
You have an array of numbers and you would like to print these numbers in a **tabular format** to make them look more
organized. Each cell of the table contains _exactly one number_ and is surrounded by _exactly four edges_:

+-+
|4|
+-+

+-----+
|12345|
+-----+

As you can see above, each corner of the cell is represented by a "+" sign, vertical edges by "-" signs and horizontal
edges by "|" signs. The width of the cell _adjusts_ to accommodate the number of digits of the number written within it.
There can be many cells in a row. Adjacent cells can share an edge:

+---+---+---+---+
|  4| 35| 80|123|
+---+---+---+---+

Note that **each cell has the same width**. The width of the cell adjusts to match the width of the **longest number**
in the table. The numbers in the cells are _aligned to the right_, with any unused area in each cell filled with\
_spaces_.

The table can consist of many rows, and adjacent rows share an edge:

+-----+-----+-----+-----+
|    4|   35|   80|  123|
+-----+-----+-----+-----+
|12345|   44|    8|    5|
+-----+-----+-----+-----+
|   24|    3|   22|   35|
+-----+-----+-----+-----+

Your goal is to output a table containing **all** the numbers from a given array such that each row contains exactly `K`
numbers. The last row can contain _fewer_ numbers.

Write a function that, given a non-empty array `A` consisting of `N` integers and an integer `K`, **prints a string**
representing the formatted array. The numbers in the table should appear in the _same order_ as the numbers in the
array.

For example, given array `A = [4, 35, 80, 123, 12345, 44, 8, 5]` and `K = 10`, the resultant table will contain exactly
one row, as shown below:

+-----+-----+-----+-----+-----+-----+-----+-----+
|    4|   35|   80|  123|12345|   44|    8|    5|
+-----+-----+-----+-----+-----+-----+-----+-----+

For `A = [4, 35, 80, 123, 12345, 44, 8, 5, 24, 3]` and `K = 4`, the table would appear as follows:

+-----+-----+-----+-----+
|    4|   35|   80|  123|
+-----+-----+-----+-----+
|12345|   44|    8|    5|
+-----+-----+-----+-----+
|   24|    3|
+-----+-----+

Given `A = [4, 35, 80, 123, 12345, 44, 8, 5, 24, 3, 22, 35]` and `K = 4`, the table would appear as follows:

+-----+-----+-----+-----+
|    4|   35|   80|  123|
+-----+-----+-----+-----+
|12345|   44|    8|    5|
+-----+-----+-----+-----+
|   24|    3|   22|   35|
+-----+-----+-----+-----+

The function shouldn't return any value.

You can **print a string to the output** (without or with the end-of-line character).

Assume that:

- `N` is an integer within the range [1..200]
- `K` is an integer within the range [1..1,000,000,000]
- each element of the array `A` is an integer within the range [0..1,000,000,000]
=end

def solve(a, k)
  line_length = k < a.size ? k : a.size
  max_char = get_max_char(a)
  array_with_pipe_and_spaces = get_array_with_pipe_and_spaces(a, max_char)
  divider_line = get_divider_line(max_char)
  output(array_with_pipe_and_spaces, divider_line, line_length, max_char)
end

def a_to_string(a)
  a.each_with_object([]) do |num, array|
    array << num.to_s
  end
end

def get_max_char(a)
  array = a_to_string(a)
  max_char = 1
  array.each do |num|
    if num.size > max_char
      max_char = num.size
    end
  end
  
  max_char
end

def get_array_with_pipe_and_spaces(a, max_char)
  string_array = a_to_string(a)
  
  string_array.each_with_object([]) do |num, array|
    num_spaces = max_char - num.size
    
    num_spaces.times do 
      num.prepend(' ')
    end
    num.prepend('|')
    array << num
  end
end

def get_divider_line(max_char)
  divider_line = '+'
  max_char.times do
    divider_line.concat('-')
  end
  
  divider_line
end

def multiply_divider_line(length, divider_line)
  line = ''
  length.times { line << divider_line }
  puts line << '+'
end

def numbers_line(array_with_pipe_and_spaces)
  string = ''
  array_with_pipe_and_spaces.each {|num| string << num}
  puts string << '|'
end

def output(array_with_pipe_and_spaces, divider_line, line_length, max_char)
  multiply_divider_line(line_length, divider_line)
  array_with_pipe_and_spaces.each_slice(line_length).to_a.each do |arr|
    if arr.size < line_length
      (line_length - arr.size).times do
        new_string = ''
        new_string << '|'
        max_char.times {new_string << ' '}
        arr << new_string
      end
    end
    numbers_line(arr)
    multiply_divider_line(line_length, divider_line)
  end
end

solve([4, 35, 80, 123, 12345, 44, 8, 5], 10)
solve([4, 35, 80, 123, 12345, 44, 8, 5, 24, 3], 4)
solve([4, 35, 80, 123, 12345, 44, 8, 5, 24, 3, 22, 35], 4)

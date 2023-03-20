# Create a function which returns the type of triangle, given the side lengths.

def get_triangle_type(arr)
    if arr.length != 3
        return 'not a triangle'
    end
    
    case arr.uniq.length
    when 1
        "equilateral"
    when 2
        "isosceles"
    when 3
        "scalene"
    end
end

puts get_triangle_type([2, 6, 5]) # "scalene"
puts get_triangle_type([4, 4, 7]) # "isosceles"
puts get_triangle_type([8, 8, 8]) # "equilateral"
puts get_triangle_type([3, 5, 5, 2]) # "not a triangle"
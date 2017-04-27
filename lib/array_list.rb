# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    raise "full" if @size == @storage.length
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    # @storage[@size] = 0
    raise "empty" if @size == @storage.length
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      if @storage[i] == key
        return true
      end
    end
      return false
  end

  def size
    @size
  end

  def max
   max = @storage[0]
   @size.times do |i|
     if @storage[i] >  max
       max = @storage[i]
     end
   end
  end

  # def print_array(array)
  #   raise
  #   @size.times do |i|
  #      @storage[i]
  #   end
  # end

  # def to_s
  #   str = ""
  #   @size.times do |i|
  #     str += @storage[i] + ", "
  #   end
  #   return "[#{str[0..-3]}]"
  # end

  def remove_all(value)
    count = 0
    @size.times do |i|
      if @storage[i] == value
        @storage[i] = @storage[i+1]
        count += 1
      end
    end
    @size = @size - count
    # puts @size
    return @storage
  end
end


array = ArrayList.new
array.add(12)
array.add(3)
array.add(12)
array.add(3)
array.add(5)
array.add(7)
array.add(12)
puts "=================="
puts "before:"
puts "----------------"
puts array.include?(12)
puts array.include?(3)
puts "=================="
puts "after:"
puts "----------------"
array.remove_all(12)
puts array.include?(3)
puts array.include?(12)

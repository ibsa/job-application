# Found in some legacy code, without tests.
#
# TODO:
#   Work out what this method does,
#   then write a test or spec to make sure you know what it does,
#   then refactor it such that your test or spec still passes, but the
#   rubyists who come after you don't have to think so hard.
def behaviour_one(ary)
  ary2 = []
  ary.each do |ary_element|
    ary3 = []
    ary2.each do |i|
      if !ary_element.nil? && ary_element < i
        ary3 << ary_element
        ary_element = nil
      end
      ary3 << i
    end
    ary3 << ary_element if !ary_element.nil?
    ary2 = ary3
  end
  ary2
end

# TODO:
#   do for this method what you did for the previous
def behaviour_two(ary)
  hash = {:even => [], :odd => []}
  ary.each do |i|
    if i == i/2 *2
      hash[:even] << i
    else
      hash[:odd] << i
    end
  end
  hash
end

# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
# not use # keys, # values, #min, # sort, #min_by
# tests for: returns the key of the smallest hash value for two examples
# tests for: returns nil for an empty hash

def key_for_min_value(name_hash)
  # start with the first 
  # iterate over hashes
  # find smallest value, not using minimum
  # return key of that value
  unless name_hash.size == 0  
    # or name_hash.empty? but we are avoiding use of methods
    # isolate the first value (the one on the right in the hash)
    temp = name_hash.first[1]
     # my preferred method is name_hash.values[0], but we cannot use values
     # I tried just using the expression instead of 'temp' variable, but that did not work. Need to come back later and figure out why.
    name_hash.each do |key,value|
      temp = value if value < temp
      # for each, value check if it is smaller than the first value. if yes, then return its key. if not, keep going.
      # I need to figure out if this would work with larger-size hashes also.
      # this is probably not going to work if there are identical values with different keys...
      # in that case, the key to the right of the cash should be returned
    end
    name_hash.index(temp) # returns the key of the value
    end
end
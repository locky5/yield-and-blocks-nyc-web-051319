def hello_t(array)
  if block_given? ##returns true if method inside is called with a block
    i = 0 
    while i < array.length 
      yield array[i] ##called with a block
      i = i + 1 
    end
    array ##returns the original array since its the last line
  else
    puts "Hey! No block was given!"
  end
end
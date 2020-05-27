def count_bits(file)

  begin
    file_to_open = File.read(file)
  rescue
    puts "Error: could not find file" 
    puts "Use 'count_bits <path-from-location-of-file>/<file.extension>'"
  else
    # convert image to binary in string form
    file_as_binary_str = file_to_open.unpack('b*')
    total_bits = file_as_binary_str[0].length

    puts "there are #{total_bits} bits in the file. Calculating the zeros and ones...."
    zerobits = 0
    onebits = 0

    0.upto(total_bits-1) do | bit |
      file_as_binary_str[0][bit] == "0" ? zerobits += 1 : onebits += 1
    end

    puts "found #{onebits} set to 1"
    puts "found #{zerobits} set to 0"

  end

end



# example use: count_bits "image/test.png"



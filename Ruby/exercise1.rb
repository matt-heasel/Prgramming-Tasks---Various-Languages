File.open("lyrics.txt", "r") do |infile|

h = Hash.new(0)
 while line = infile.gets do
 splt = line.split()
  splt.each  {|splt| h[splt]  += 1}
  
end#end while
 puts h
 
 end#end file
 


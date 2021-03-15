class LetterHistogram
	
	
	attr_accessor :text
	
	
	def calculateFrequencies(text)
		h = Hash.new(0)
		k = text
		splt = k.split(//)
		
		splt.each  {|splt| h[splt.downcase]  += 1}
		puts h
		end#end while
		
	
	def test
		puts "input = #{@text}"
		end
		
	d = LetterHistogram.new()
	d.test
	d.calculateFrequencies('heLlo!')
end
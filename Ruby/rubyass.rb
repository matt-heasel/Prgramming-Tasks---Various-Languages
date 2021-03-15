class LetterHistogram
	
	
	attr_accessor :text

	
	def calculateFrequencies(text)
		h = Hash.new(0)
		
		k = text.gsub!(/[^0-9A-Za-z]/, '')
		splt = k.split(//)
		
		
		splt.each  {|splt| h[splt.downcase]  += 1}
		
		puts h
	end
		

		
	d = LetterHistogram.new()

	d.calculateFrequencies('heLlo!$%^&')
end
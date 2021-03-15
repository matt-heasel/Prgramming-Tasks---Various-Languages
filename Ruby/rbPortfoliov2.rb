class LetterHistogram
	
	
	def text
		@text
	end
	def text=(n)
		@text = n
	end
	def initialize(n ="HeLloWorld!")
		@text = n
	end
	
	def calculateFrequencies(text)
		h = Hash.new('')
		
		k = text.gsub!(/[^0-9A-Za-z]/, '')
		splt = k.split(//)
		
		
		splt.each  {|splt| h[splt.downcase]  += '*'}
		
		puts h
	end
	
	
	def display ()#displays all letters A-Z
		#p = calculateFrequencies(text)
		#puts p
		
		alphabet = "a".."z"
		puts alphabet.to_a		
	end
	private :calculateFrequencies

		
	d = LetterHistogram.new()
	puts d.text
	d.text = "This is going weLl !"
	puts d.text
	#d.calculateFrequencies()
	d.display()

	
end
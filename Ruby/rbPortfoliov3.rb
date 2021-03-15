class LetterHistogram
	
	
	def text
		@text
	end
	def text=(n)
		@text = n
	end
	def initialize(n ="HeLloWorld!")
		
		@text = n
		@var2 = calculateFrequencies(text)
		
	end
	
	def calculateFrequencies(text)
		h = Hash.new('')
		
		k = text.gsub!(/[^0-9A-Za-z]/, '')
		splt = k.split(//)
		
		
		splt.each  {|splt| h[splt.downcase]  += '*'}
		
		return h
	end
	
	
	def display ()#displays all letters A-Z
		#p = calculateFrequencies(text)
		#puts p
		puts @var2
		puts "var 2"
		alphabet = "a".."z"
		puts alphabet.to_a		
	end
	private :calculateFrequencies

		
	d = LetterHistogram.new()
	#puts d.text
	d.text = "This is going weLl !"
	puts d.text
	#d.calculateFrequencies()
	d.display()

	
end
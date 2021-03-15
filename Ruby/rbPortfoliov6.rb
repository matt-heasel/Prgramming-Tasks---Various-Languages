class LetterHistogram
	
	
	def text
		@text
	end
	def text=(n)
		@text = n
	end
	#def initialize(n)
	#	@text = n
		#@text = calculateFrequencies(n)
	#end
	#def initialize(c ="HeLloWorld!")
		
	#	@text = calculateFrequencies(c)
		#@var2 = calculateFrequencies(n)
		
	#end
	
	def calculateFrequencies(text)
		h = Hash.new('Hello world!')

		#k = text.gsub!(/[^0-9A-Za-z]/, '')
		splt = text.split(//)
		
		
		splt.each  {|splt| h[splt.downcase]  += '*'}
		
		return h
	end
	
	
	def display ()#displays all letters A-Z
		
		textext = text
		final = calculateFrequencies(textext)
		
		puts final
		#alphabet = ("a".."z")
		#alphabet.each_with_index{|alphabet,final|"#{alphabet} => #{final}"}
		
		#puts thing	
	end
	private :calculateFrequencies

		
	d = LetterHistogram.new()
	puts d.text
	#d.text = "This is going weLl !"
	
	#d.calculateFrequencies()
	d.display()
	
	
end
class LetterHistogram
	
	
	def text
		@text
	end
	def text=(n)
		@text = n
	end
	def initialize(n = "hello world!")
		@text = n

	end

	
	def calculateFrequencies(text)
		h = Hash.new('')
		
		k = text.gsub!(/[^0-9A-Za-z]/, '')
		splt = k.split(//)
		
		
		splt.each  {|splt| h[splt.downcase]  += '*'}
		
		return h
	end
	
	
	def display ()#displays all letters A-Z

		textext = text
		hash = calculateFrequencies(textext)
		
		alphabet = "a".."z"
		

		for item in alphabet
		count = hash[item]
		puts "#{item}" "#{count}"
		end
		
	end
	private :calculateFrequencies

		

	
	
end
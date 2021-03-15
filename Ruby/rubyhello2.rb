class LetterHistogram
	
	
	attr_accessor :text
	
	def initialize()
	
	 @text = params.fetch(:text, 'Hello World!')
	
	end
	def to_s
	
    "#{text}"
	end
	

	def calculateFrequencies(text)
		
		h = Hash.new("")
		k = text.gsub!(/[^0-9A-Za-z]/, '')
		splt = k.split(//)
		
		
		splt.each  {|splt|  h[splt.downcase]  += '*'}
		
		puts h
		
	end
		

	def display ()#displays all letters A-Z
		#p = calculateFrequencies(text)
		#puts p
		
		alphabet = "a".."z"
		puts alphabet.to_a
		puts ("debug")
		
		
	end
	

	 d = LetterHistogram.new()
	 d.text
	

	d.calculateFrequencies('heLlo!$%^&')
	d.display()
end
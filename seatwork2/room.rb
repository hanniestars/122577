class Room
	attr_reader :type
	attr_writer :type

	def initialize(type)
		@type = type
	end

	def you_reserved 
		"You reserved #{type}"
	end

end

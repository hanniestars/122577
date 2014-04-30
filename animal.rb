class Animal
	attr_reader :name
	attr_writer :name

	def initialize(name)
		@name = name
	end

	def say_my_name
		"My name is #{name}"
	end
end

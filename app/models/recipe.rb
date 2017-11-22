class Recipe < ApplicationRecord
	belongs_to(:user)
	self.per_page = 9


	def self.humding

		y = self.last
		c = y.title.reverse
		d = y.description.reverse
		z = []
		z.push(c)
		z.push(d)
		return z

	end

	def self.balthasar
		y = self.last
		if y.title == "dum"
			z = []
			c = y.description.upcase
			d = y.description.downcase
			z.push(c)
			z.push(d)
			return z
		else
			z = []
			c = y.description.upcase
			z.push(c)
			return z
		end
	end

end
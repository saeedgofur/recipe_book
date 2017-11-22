require 'rails_helper'

RSpec.describe Recipe, type: :model do
  
	describe '#humding' do
		it 'reverses the title and description of the last recipe' do
			zoom = User.create(name: "Random Name", email: "1@1.com", password: SecureRandom.hex(4))
			a = Recipe.create(id:1, title: "the", description: "end", user_id: zoom.id)
			expect(Recipe.humding.count).to eq 2
		end
	end

	describe '#balthasar' do

		it 'makes an upcase and downcase of the description of the last recipe if the title is dum' do

			zoom = User.create(name: "Random Name", email: "1@1.com", password: SecureRandom.hex(4))
			a = Recipe.create(id:1, title: "dum", description: "end", user_id: zoom.id)
			expect(Recipe.balthasar.count).to eq 2

		end



		it 'just makes an upcase if title is not dum' do
			
			zoom = User.create(name: "Random Name", email: "1@1.com", password: SecureRandom.hex(4))
			a = Recipe.create(id:1, title: "the", description: "end", user_id: zoom.id)
			expect(Recipe.balthasar.count).to eq 1

		end
	end

end

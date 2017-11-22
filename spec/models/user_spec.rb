require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'associations' do
  	it {is_expected.to have_many(:recipes)}
  end


  describe 'validations' do
  	describe 'for email' do

  		describe 'for presence validation' do
  			it { is_expected.to validate_presence_of(:email) }
  		end


  		describe 'for uniqueness column' do
  			 it { should validate_uniqueness_of(:email) }
  		end


  		describe 'for format column' do
  			it 'must be correct format' do
  				a = User.new(name: "Random Name", email: "1@1.com", password: SecureRandom.hex(4))
  				expect(a.valid?).to be true
  			end

  			it "won't save if is wrong format" do 
				a = User.new(name: "Random Name", email: "11.com", password: SecureRandom.hex(4))
  				expect(a.valid?).to be false
  			end
  		end


  		
  	end
  end
end

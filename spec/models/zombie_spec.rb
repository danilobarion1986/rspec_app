require 'rails_helper'

RSpec.describe Zombie, type: :model do
	subject(:valid_zombie) { Zombie.new(name: 'Ash') }
	subject(:invalid_zombie) { Zombie.new() }

  it { should respond_to(:name) }
  it { should respond_to(:brains) }
  it { should respond_to(:iq) }
  it { should respond_to(:eat_brains) }
  it { should respond_to(:hungry?) }
  it { should be_hungry } # predicate methods can be tested with this syntax 'be_<method_name>'

	context 'when it is correctly created' do
		it 'is valid' do
			expect(valid_zombie).to be_valid
		end

		it 'has no brains' do
			expect(valid_zombie.brains).to eq(0)
		end
	end

	context 'when it is incorrectly created' do
		it 'is invalid' do
			expect(invalid_zombie).to_not be_valid
		end
	end

  context 'when eats a brain' do
    it 'iq should be increased by 10' do
      expect{ valid_zombie.eat_brains }.to change { valid_zombie.iq }.by(10)
    end
  end
end

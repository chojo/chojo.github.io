require 'rspec'
require_relative '../lib/user'

describe User do

  before(:each) do
    @user = User.new
  end

  describe '#greeting' do
    it 'greets everyone' do
      @user.name = 'Anonymous'
      expect(@user.greeting).to eq('Hey Anonymous! What are you gonna read next?')
    end
    it 'greets astronaut' do
      @user.name = 'Louis Armstrong'
      @user.occupation = 'Astronaut'
      expect(@user.greeting).to eq('Ola Louis Armstrong! When do you visiting ISS again?')
    end
    it 'greets engineer' do
      @user.name = 'Howard Bell'
      @user.occupation = 'Engineer'
      expect(@user.greeting).to eq('Bonjour Howard Bell! What are you building next?')
    end
  end
end
